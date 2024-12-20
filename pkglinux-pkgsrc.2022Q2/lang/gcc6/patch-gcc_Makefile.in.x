$NetBSD$

--- gcc/Makefile.in.orig	2024-02-08 17:36:16.822483322 +0000
+++ gcc/Makefile.in
@@ -1791,11 +1791,20 @@ $(srcdir)/aclocal.m4 : @MAINT@ $(aclocal
 @MAINT@	@rm -f $(srcdir)/cstamp-h.in
 @MAINT@	echo timestamp > $(srcdir)/cstamp-h.in
 auto-host.h: cstamp-h ; @true
+auto-build.h: cstamp-h ; @true
 cstamp-h: config.in config.status
-	CONFIG_HEADERS=auto-host.h:config.in \
+	CONFIG_HEADERS="auto-host.h:config.in auto-build.h:config.in" \
 	CONFIG_FILES= \
 	LANGUAGES="$(CONFIG_LANGUAGES)" $(SHELL) config.status
 
+# On configurations that require auto-build.h, it is created while
+# running configure, so make config.status depend on it, so that
+# config.status --recheck runs and updates or creates it.
+@HAVE_AUTO_BUILD@auto-build.h: $(srcdir)/configure $(srcdir)/config.gcc
+
+
+@HAVE_AUTO_BUILD@config.status: auto-build.h
+
 # Really, really stupid make features, such as SUN's KEEP_STATE, may force
 # a target to build even if it is up-to-date.  So we must verify that
 # config.status does not exist before failing.
@@ -2022,6 +2031,7 @@ prefix.o: $(BASEVER)
 # Language-independent files.
 
 DRIVER_DEFINES = \
+  -DLINK_LIBGCC_SPEC="\"%D $(LINKER_RPATH_FLAG)$(prefix)/@GCC_TARGET_MACHINE@/lib/%M $(LINKER_RPATH_FLAG)$(libdir)/%M \"" \
   -DSTANDARD_STARTFILE_PREFIX=\"$(unlibsubdir)/\" \
   -DSTANDARD_EXEC_PREFIX=\"$(libdir)/gcc/\" \
   -DSTANDARD_LIBEXEC_PREFIX=\"$(libexecdir)/gcc/\" \
