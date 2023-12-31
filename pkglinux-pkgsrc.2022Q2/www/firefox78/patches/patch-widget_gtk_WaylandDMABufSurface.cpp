$NetBSD: patch-widget_gtk_WaylandDMABufSurface.cpp,v 1.3 2021/12/28 20:05:49 nia Exp $

* Fix build under NetBSD.

--- widget/gtk/WaylandDMABufSurface.cpp.orig	2020-06-19 02:17:05.000000000 +0000
+++ widget/gtk/WaylandDMABufSurface.cpp
@@ -18,7 +18,9 @@
 #include <sys/time.h>
 #include <dlfcn.h>
 #include <sys/mman.h>
+#if !defined(__NetBSD__)
 #include <sys/eventfd.h>
+#endif
 #include <poll.h>
 
 #include "mozilla/widget/gbm.h"
@@ -91,6 +93,7 @@ void WaylandDMABufSurface::GlobalRefAdd(
 }
 
 void WaylandDMABufSurface::GlobalRefCountCreate() {
+#if !defined(__NetBSD__)
   MOZ_ASSERT(!mGlobalRefCountFd);
   mGlobalRefCountFd = eventfd(0, EFD_CLOEXEC | EFD_NONBLOCK | EFD_SEMAPHORE);
   if (mGlobalRefCountFd < 0) {
@@ -98,6 +101,7 @@ void WaylandDMABufSurface::GlobalRefCoun
     mGlobalRefCountFd = 0;
     return;
   }
+#endif
 }
 
 void WaylandDMABufSurface::GlobalRefCountImport(int aFd) {
