$NetBSD: patch-src_3rdparty_chromium_content_browser_zygote__host_zygote__host__impl__linux.cc,v 1.1 2022/04/18 11:18:19 adam Exp $

--- src/3rdparty/chromium/content/browser/zygote_host/zygote_host_impl_linux.cc.orig	2021-02-19 16:41:59.000000000 +0000
+++ src/3rdparty/chromium/content/browser/zygote_host/zygote_host_impl_linux.cc
@@ -28,6 +28,7 @@ namespace content {
 
 namespace {
 
+#if !defined(OS_BSD)
 // Receive a fixed message on fd and return the sender's PID.
 // Returns true if the message received matches the expected message.
 bool ReceiveFixedMessage(int fd,
@@ -49,6 +50,7 @@ bool ReceiveFixedMessage(int fd,
     return false;
   return true;
 }
+#endif
 
 }  // namespace
 
@@ -58,9 +60,13 @@ ZygoteHost* ZygoteHost::GetInstance() {
 }
 
 ZygoteHostImpl::ZygoteHostImpl()
+#if !defined(OS_BSD)
     : use_namespace_sandbox_(false),
       use_suid_sandbox_(false),
       use_suid_sandbox_for_adj_oom_score_(false),
+#else
+    :
+#endif
       sandbox_binary_(),
       zygote_pids_lock_(),
       zygote_pids_() {}
@@ -73,6 +79,7 @@ ZygoteHostImpl* ZygoteHostImpl::GetInsta
 }
 
 void ZygoteHostImpl::Init(const base::CommandLine& command_line) {
+#if !defined(OS_BSD)
   if (command_line.HasSwitch(sandbox::policy::switches::kNoSandbox)) {
     return;
   }
@@ -123,6 +130,7 @@ void ZygoteHostImpl::Init(const base::Co
            "you can try using --"
         << sandbox::policy::switches::kNoSandbox << ".";
   }
+#endif
 }
 
 void ZygoteHostImpl::AddZygotePid(pid_t pid) {
@@ -147,6 +155,7 @@ pid_t ZygoteHostImpl::LaunchZygote(
     base::CommandLine* cmd_line,
     base::ScopedFD* control_fd,
     base::FileHandleMappingVector additional_remapped_fds) {
+#if !defined(OS_BSD)
   int fds[2];
   CHECK_EQ(0, socketpair(AF_UNIX, SOCK_SEQPACKET, 0, fds));
   CHECK(base::UnixDomainSocket::EnableReceiveProcessId(fds[0]));
@@ -214,9 +223,12 @@ pid_t ZygoteHostImpl::LaunchZygote(
 
   AddZygotePid(pid);
   return pid;
+#else
+  return 0;
+#endif
 }
 
-#if !defined(OS_OPENBSD)
+#if !defined(OS_BSD)
 void ZygoteHostImpl::AdjustRendererOOMScore(base::ProcessHandle pid,
                                             int score) {
   // 1) You can't change the oom_score_adj of a non-dumpable process
