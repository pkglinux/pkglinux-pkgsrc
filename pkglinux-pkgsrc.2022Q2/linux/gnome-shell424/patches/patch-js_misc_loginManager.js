$NetBSD$

--- js/misc/loginManager.js.orig	2022-08-11 15:59:46.320000000 +0000
+++ js/misc/loginManager.js
@@ -14,6 +14,12 @@ const SystemdLoginManager = Gio.DBusProx
 const SystemdLoginSession = Gio.DBusProxy.makeProxyWrapper(SystemdLoginSessionIface);
 const SystemdLoginUser = Gio.DBusProxy.makeProxyWrapper(SystemdLoginUserIface);
 
+const ConsoleKitManagerIface = loadInterfaceXML('org.freedesktop.ConsoleKit.Manager');
+const ConsoleKitSessionIface = loadInterfaceXML('org.freedesktop.ConsoleKit.Session');
+
+const ConsoleKitManager = Gio.DBusProxy.makeProxyWrapper(ConsoleKitManagerIface);
+const ConsoleKitSession = Gio.DBusProxy.makeProxyWrapper(ConsoleKitSessionIface);
+
 function haveSystemd() {
     return GLib.access("/run/systemd/seats", 0) >= 0;
 }
@@ -43,7 +49,7 @@ function canLock() {
                                                -1, null);
 
         let version = result.deep_unpack()[0].deep_unpack();
-        return haveSystemd() && versionCompare('3.5.91', version);
+        return versionCompare('3.5.91', version);
     } catch (e) {
         return false;
     }
@@ -81,7 +87,7 @@ function getLoginManager() {
         if (haveSystemd())
             _loginManager = new LoginManagerSystemd();
         else
-            _loginManager = new LoginManagerDummy();
+            _loginManager = new LoginManagerConsoleKit();
     }
 
     return _loginManager;
@@ -204,6 +210,82 @@ var LoginManagerSystemd = class {
 };
 Signals.addSignalMethods(LoginManagerSystemd.prototype);
 
+var LoginManagerConsoleKit = class {
+    constructor () {
+        this._proxy = new ConsoleKitManager(Gio.DBus.system,
+                                            'org.freedesktop.ConsoleKit',
+                                            '/org/freedesktop/ConsoleKit/Manager');
+        this._proxy.connectSignal('PrepareForSleep',
+                                  this._prepareForSleep.bind(this));
+    }
+
+    // Having this function is a bit of a hack since the Systemd and ConsoleKit
+    // session objects have different interfaces - but in both cases there are
+    // Lock/Unlock signals, and that's all we count upon at the moment.
+
+
+    getCurrentSessionProxy(callback) {
+        if (this._currentSession) {
+            callback (this._currentSession);
+            return;
+        }
+
+        this._proxy.GetCurrentSessionRemote((result, error) => {
+            if (error) {
+                logError(error, 'Could not get a proxy for the current session');
+            } else {
+                this._currentSession = new ConsoleKitSession(Gio.DBus.system,
+                                                             'org.freedesktop.ConsoleKit',
+                                                             result[0]);
+                callback(this._currentSession);
+            }
+        });
+    }
+
+    canSuspend(asyncCallback) {
+        this._proxy.CanSuspendRemote((result, error) => {
+            if (error) {
+                asyncCallback(false, false);
+            } else {
+                asyncCallback(result[0], false);
+            }
+        });
+    }
+
+    listSessions(asyncCallback) {
+        asyncCallback([]);
+    }
+
+    suspend() {
+        this._proxy.SuspendRemote(true);
+    }
+
+    inhibit(reason, callback) {
+        let inVariant = GLib.Variant.new('(ssss)',
+                                         ['sleep',
+                                          'GNOME Shell',
+                                          reason,
+                                          'delay']);
+        this._proxy.call_with_unix_fd_list('Inhibit', inVariant, 0, -1, null, null,
+            (proxy, result) => {
+                let fd = -1;
+                try {
+                    let [outVariant, fdList] = proxy.call_with_unix_fd_list_finish(result);
+                    fd = fdList.steal_fds()[0];
+                    callback(new Gio.UnixInputStream({ fd: fd }));
+                } catch(e) {
+                    logError(e, "Error getting ConsoleKit inhibitor");
+                    callback(null);
+                }
+            });
+    }
+
+    _prepareForSleep(proxy, sender, [aboutToSuspend]) {
+        this.emit('prepare-for-sleep', aboutToSuspend);
+    }
+}
+Signals.addSignalMethods(LoginManagerConsoleKit.prototype);
+
 var LoginManagerDummy = class {
     getCurrentSessionProxy(_callback) {
         // we could return a DummySession object that fakes whatever callers
