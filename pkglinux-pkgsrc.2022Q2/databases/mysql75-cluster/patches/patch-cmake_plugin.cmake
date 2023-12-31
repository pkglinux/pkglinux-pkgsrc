$NetBSD: patch-cmake_plugin.cmake,v 1.1 2022/04/17 04:07:14 jnemeth Exp $

Build with newer DTrace.

--- cmake/plugin.cmake.orig	2021-09-14 09:08:08.000000000 +0000
+++ cmake/plugin.cmake
@@ -28,6 +28,7 @@ INCLUDE(${MYSQL_CMAKE_SCRIPT_DIR}/cmake_
 # [STORAGE_ENGINE]
 # [MANDATORY|DEFAULT]
 # [STATIC_ONLY|MODULE_ONLY]
+# [DTRACE_INSTRUMENTED]
 # [MODULE_OUTPUT_NAME module_name]
 # [STATIC_OUTPUT_NAME static_name]
 # [NOT_FOR_EMBEDDED]
@@ -59,7 +60,7 @@ ENDMACRO()
 MACRO(MYSQL_ADD_PLUGIN)
   MYSQL_PARSE_ARGUMENTS(ARG
     "LINK_LIBRARIES;DEPENDENCIES;MODULE_OUTPUT_NAME;STATIC_OUTPUT_NAME"
-    "STORAGE_ENGINE;STATIC_ONLY;MODULE_ONLY;CLIENT_ONLY;MANDATORY;DEFAULT;DISABLED;NOT_FOR_EMBEDDED;RECOMPILE_FOR_EMBEDDED;TEST_ONLY;SKIP_INSTALL"
+    "STORAGE_ENGINE;STATIC_ONLY;MODULE_ONLY;CLIENT_ONLY;MANDATORY;DEFAULT;DISABLED;NOT_FOR_EMBEDDED;RECOMPILE_FOR_EMBEDDED;TEST_ONLY;SKIP_INSTALL;DTRACE_INSTRUMENTED"
     ${ARGN}
   )
   
@@ -153,7 +154,9 @@ MACRO(MYSQL_ADD_PLUGIN)
       -P ${CMAKE_BINARY_DIR}/archive_output_directory/lib_location_${target}.cmake
       )
 
-    DTRACE_INSTRUMENT(${target})
+    IF (ARG_DTRACE_INSTRUMENTED)
+      DTRACE_INSTRUMENT(${target})
+    ENDIF()
     ADD_DEPENDENCIES(${target} GenError ${ARG_DEPENDENCIES})
     IF(WITH_EMBEDDED_SERVER AND NOT ARG_NOT_FOR_EMBEDDED)
       # Embedded library should contain PIC code and be linkable
@@ -161,7 +164,9 @@ MACRO(MYSQL_ADD_PLUGIN)
       IF(ARG_RECOMPILE_FOR_EMBEDDED OR NOT _SKIP_PIC)
         # Recompile some plugins for embedded
         ADD_CONVENIENCE_LIBRARY(${target}_embedded ${SOURCES})
-        DTRACE_INSTRUMENT(${target}_embedded)   
+        IF (ARG_DTRACE_INSTRUMENTED)
+          DTRACE_INSTRUMENT(${target}_embedded)
+        ENDIF()
         IF(ARG_RECOMPILE_FOR_EMBEDDED)
           SET_TARGET_PROPERTIES(${target}_embedded 
             PROPERTIES COMPILE_DEFINITIONS "MYSQL_SERVER;EMBEDDED_LIBRARY")
@@ -225,7 +230,9 @@ MACRO(MYSQL_ADD_PLUGIN)
 
     ADD_VERSION_INFO(${target} MODULE SOURCES)
     ADD_LIBRARY(${target} MODULE ${SOURCES}) 
-    DTRACE_INSTRUMENT(${target})
+    IF (ARG_DTRACE_INSTRUMENTED)
+      DTRACE_INSTRUMENT(${target})
+    ENDIF()
     SET_TARGET_PROPERTIES (${target} PROPERTIES PREFIX ""
       COMPILE_DEFINITIONS "MYSQL_DYNAMIC_PLUGIN")
     IF(NOT ARG_CLIENT_ONLY)
