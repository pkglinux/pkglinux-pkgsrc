$NetBSD: patch-src_3rdparty_chromium_base_process_launch.h,v 1.2 2022/04/18 11:18:18 adam Exp $

--- src/3rdparty/chromium/base/process/launch.h.orig	2021-02-19 16:41:59.000000000 +0000
+++ src/3rdparty/chromium/base/process/launch.h
@@ -180,7 +180,7 @@ struct BASE_EXPORT LaunchOptions {
   bool clear_environment = false;
 #endif  // OS_WIN || OS_POSIX || OS_FUCHSIA
 
-#if defined(OS_LINUX) || defined(OS_CHROMEOS)
+#if defined(OS_LINUX) || defined(OS_CHROMEOS) || defined(OS_BSD)
   // If non-zero, start the process using clone(), using flags as provided.
   // Unlike in clone, clone_flags may not contain a custom termination signal
   // that is sent to the parent when the child dies. The termination signal will
