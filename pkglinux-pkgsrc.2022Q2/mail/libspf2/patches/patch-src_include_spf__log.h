$NetBSD: patch-src_include_spf__log.h,v 1.2 2022/04/02 21:41:39 spz Exp $

Dropping a trailing comma when __VA_ARGS__ would be empty is a GCC extension.

--- src/include/spf_log.h.orig	2021-06-09 05:43:12.000000000 +0000
+++ src/include/spf_log.h
@@ -60,10 +60,10 @@ void SPF_debugv( const char *file, int l
 
 #if defined( __STDC_VERSION__ ) && __STDC_VERSION__ >= 199901L
 
-#define SPF_errorf(format, ... ) SPF_errorx( __FILE__, __LINE__, format, ##__VA_ARGS__ )
-#define SPF_warningf(format, ... ) SPF_warningx( __FILE__, __LINE__, format, ##__VA_ARGS__ )
-#define SPF_infof(format, ... ) SPF_infox( __FILE__, __LINE__, format, ##__VA_ARGS__ )
-#define SPF_debugf(format, ... ) SPF_debugx( __FILE__, __LINE__, format, ##__VA_ARGS__ )
+#define SPF_errorf(...) SPF_errorx( __FILE__, __LINE__, __VA_ARGS__ )
+#define SPF_warningf(...) SPF_warningx( __FILE__, __LINE__, __VA_ARGS__ )
+#define SPF_infof(...) SPF_infox( __FILE__, __LINE__, __VA_ARGS__ )
+#define SPF_debugf(...) SPF_debugx( __FILE__, __LINE__, __VA_ARGS__ )
 
 #elif defined( __GNUC__ )
 
