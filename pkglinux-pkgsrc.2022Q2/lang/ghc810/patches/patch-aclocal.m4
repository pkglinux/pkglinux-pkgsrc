$NetBSD: patch-aclocal.m4,v 1.2 2021/09/30 13:23:48 jperkin Exp $

Hunk #1:
  Remove _AC_PROG_CC_C99 macro that is removed in autoconf-2.71
  to fix build failure.

Hunk #2:
  Support SunOS/x86_64.

Hunk #3:
  Canonicalize OS name netbsd* to "netbsd":
  https://gitlab.haskell.org/ghc/ghc/merge_requests/2496

--- aclocal.m4.orig	2021-01-25 19:33:20.000000000 +0000
+++ aclocal.m4
@@ -651,17 +651,6 @@ AC_DEFUN([FP_SET_CFLAGS_C99],
     CC="$$1"
     CFLAGS="$$2"
     CPPFLAGS="$$3"
-    unset ac_cv_prog_cc_c99
-    dnl perform detection
-    _AC_PROG_CC_C99
-    fp_cc_c99="$ac_cv_prog_cc_c99"
-    case "x$ac_cv_prog_cc_c99" in
-      x)   ;; # noop
-      xno) AC_MSG_ERROR([C99-compatible compiler needed]) ;;
-      *)   $2="$$2 $ac_cv_prog_cc_c99"
-           $3="$$3 $ac_cv_prog_cc_c99"
-           ;;
-    esac
     dnl restore saved state
     FP_COPY_SHELLVAR([fp_save_CC],[CC])
     FP_COPY_SHELLVAR([fp_save_CFLAGS],[CFLAGS])
@@ -701,7 +690,7 @@ AC_DEFUN([FPTOOLS_SET_C_LD_FLAGS],
     x86_64-unknown-solaris2)
         $2="$$2 -m64"
         $3="$$3 -m64"
-        $4="$$4 -m64"
+        $4="$$4 -64"
         $5="$$5 -m64"
         ;;
     alpha-*)
@@ -1360,7 +1349,7 @@ AC_DEFUN([FP_GCC_VERSION], [
     AC_MSG_ERROR([C compiler is required])
   fi
 
-  if $CC --version | grep --quiet gcc; then
+  if $CC --version | grep gcc >/dev/null; then
     AC_CACHE_CHECK([version of gcc], [fp_cv_gcc_version],
     [
         # Be sure only to look at the first occurrence of the "version " string;
@@ -2106,6 +2095,9 @@ AC_DEFUN([GHC_CONVERT_OS],[
       openbsd*)
         $3="openbsd"
         ;;
+      netbsd*)
+        $3="netbsd"
+        ;;
       # As far as I'm aware, none of these have relevant variants
       freebsd|netbsd|dragonfly|hpux|linuxaout|kfreebsdgnu|freebsd2|mingw32|darwin|nextstep2|nextstep3|sunos4|ultrix|haiku)
         $3="$1"
