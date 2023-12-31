$NetBSD: patch-ext_openssl_openssl.c,v 1.1 2021/09/28 14:39:49 jperkin Exp $

Support OpenSSL 3.

--- ext/openssl/openssl.c.orig	2021-09-28 14:35:16.023438887 +0000
+++ ext/openssl/openssl.c
@@ -1337,7 +1337,9 @@ PHP_MINIT_FUNCTION(openssl)
 	REGISTER_LONG_CONSTANT("PKCS7_NOSIGS", PKCS7_NOSIGS, CONST_CS|CONST_PERSISTENT);
 
 	REGISTER_LONG_CONSTANT("OPENSSL_PKCS1_PADDING", RSA_PKCS1_PADDING, CONST_CS|CONST_PERSISTENT);
+#if OPENSSL_VERSION_NUMBER < 0x03000000L
 	REGISTER_LONG_CONSTANT("OPENSSL_SSLV23_PADDING", RSA_SSLV23_PADDING, CONST_CS|CONST_PERSISTENT);
+#endif
 	REGISTER_LONG_CONSTANT("OPENSSL_NO_PADDING", RSA_NO_PADDING, CONST_CS|CONST_PERSISTENT);
 	REGISTER_LONG_CONSTANT("OPENSSL_PKCS1_OAEP_PADDING", RSA_PKCS1_OAEP_PADDING, CONST_CS|CONST_PERSISTENT);
 
