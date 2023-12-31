$NetBSD: patch-cmake_config-ix.cmake,v 1.3 2022/03/13 15:22:32 tnn Exp $

Do not generate invalid llvm-config in pkgsrc.

--- cmake/config-ix.cmake.orig	2021-06-28 16:23:38.000000000 +0000
+++ cmake/config-ix.cmake
@@ -175,7 +175,7 @@ if(NOT LLVM_USE_SANITIZER MATCHES "Memor
       set(MAYBE_REQUIRED)
     endif()
     if(LLVM_ENABLE_TERMINFO)
-      find_library(TERMINFO_LIB NAMES terminfo tinfo curses ncurses ncursesw ${MAYBE_REQUIRED})
+      find_library(TERMINFO_LIB NAMES terminfo curses ncurses ncursesw tinfo ${MAYBE_REQUIRED})
     endif()
     if(TERMINFO_LIB)
       set(LLVM_ENABLE_TERMINFO 1)
