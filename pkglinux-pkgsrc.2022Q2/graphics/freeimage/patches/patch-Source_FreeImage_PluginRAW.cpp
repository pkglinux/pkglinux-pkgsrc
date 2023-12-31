$NetBSD: patch-Source_FreeImage_PluginRAW.cpp,v 1.2 2021/10/06 14:48:29 nia Exp $

- Unbundle image libraries.
- Fix building with libraw-0.20.

--- Source/FreeImage/PluginRAW.cpp.orig	2015-03-10 10:12:04.000000000 +0000
+++ Source/FreeImage/PluginRAW.cpp
@@ -19,7 +19,7 @@
 // Use at your own risk!
 // ==========================================================
 
-#include "../LibRawLite/libraw/libraw.h"
+#include <libraw/libraw.h>
 
 #include "FreeImage.h"
 #include "Utilities.h"
@@ -63,17 +63,14 @@ public:
 	}
 
     int read(void *buffer, size_t size, size_t count) { 
-		if(substream) return substream->read(buffer, size, count);
 		return _io->read_proc(buffer, (unsigned)size, (unsigned)count, _handle);
 	}
 
     int seek(INT64 offset, int origin) { 
-        if(substream) return substream->seek(offset, origin);
 		return _io->seek_proc(_handle, (long)offset, origin);
 	}
 
     INT64 tell() { 
-		if(substream) return substream->tell();
         return _io->tell_proc(_handle);
     }
 	
@@ -83,13 +80,11 @@ public:
 
     int get_char() { 
 		int c = 0;
-		if(substream) return substream->get_char();
 		if(!_io->read_proc(&c, 1, 1, _handle)) return -1;
 		return c;
    }
 	
 	char* gets(char *buffer, int length) { 
-		if (substream) return substream->gets(buffer, length);
 		memset(buffer, 0, length);
 		for(int i = 0; i < length; i++) {
 			if(!_io->read_proc(&buffer[i], 1, 1, _handle))
@@ -104,7 +99,6 @@ public:
 		std::string buffer;
 		char element = 0;
 		bool bDone = false;
-		if(substream) return substream->scanf_one(fmt,val);				
 		do {
 			if(_io->read_proc(&element, 1, 1, _handle) == 1) {
 				switch(element) {
@@ -127,7 +121,6 @@ public:
 	}
 
 	int eof() { 
-		if(substream) return substream->eof();
         return (_io->tell_proc(_handle) >= _eof);
     }
 
