$NetBSD: patch-CMakeModules_FindOpenEXR.cmake,v 1.1 2021/07/09 10:30:11 markd Exp $

openexr3 fix

--- CMakeModules/FindOpenEXR.cmake.orig	2020-01-31 11:03:07.000000000 +0000
+++ CMakeModules/FindOpenEXR.cmake
@@ -51,11 +51,11 @@ MACRO(OPENEXR_FIND libname)
     OPENEXR_FIND_VAR(OPENEXR_${libname}_LIBRARY_DEBUG ${libname}d)
 ENDMACRO(OPENEXR_FIND)
 
-OPENEXR_FIND(IlmImf)
+OPENEXR_FIND(OpenEXR)
 
 SET(OPENEXR_FOUND "NO")
-IF(OPENEXR_INCLUDE_DIR AND OPENEXR_IlmImf_LIBRARY)
-    SET(OPENEXR_LIBRARIES ${OPENEXR_IlmImf_LIBRARY} )
-    SET(OPENEXR_LIBRARIES_VARS OPENEXR_IlmImf_LIBRARY )
+IF(OPENEXR_INCLUDE_DIR AND OPENEXR_OpenEXR_LIBRARY)
+    SET(OPENEXR_LIBRARIES ${OPENEXR_OpenEXR_LIBRARY} )
+    SET(OPENEXR_LIBRARIES_VARS OPENEXR_OpenEXR_LIBRARY )
     SET(OPENEXR_FOUND "YES")
-ENDIF(OPENEXR_INCLUDE_DIR AND OPENEXR_IlmImf_LIBRARY)
+ENDIF(OPENEXR_INCLUDE_DIR AND OPENEXR_OpenEXR_LIBRARY)