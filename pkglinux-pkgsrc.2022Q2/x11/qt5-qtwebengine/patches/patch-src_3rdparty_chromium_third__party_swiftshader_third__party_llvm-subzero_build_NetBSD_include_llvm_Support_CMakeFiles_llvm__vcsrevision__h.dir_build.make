$NetBSD: patch-src_3rdparty_chromium_third__party_swiftshader_third__party_llvm-subzero_build_NetBSD_include_llvm_Support_CMakeFiles_llvm__vcsrevision__h.dir_build.make,v 1.1 2021/08/03 21:04:36 markd Exp $

--- src/3rdparty/chromium/third_party/swiftshader/third_party/llvm-subzero/build/NetBSD/include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/build.make.orig	2020-07-23 08:46:21.648283690 +0000
+++ src/3rdparty/chromium/third_party/swiftshader/third_party/llvm-subzero/build/NetBSD/include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/build.make
@@ -0,0 +1,96 @@
+# CMAKE generated file: DO NOT EDIT!
+# Generated by "Unix Makefiles" Generator, CMake Version 3.17
+
+# Delete rule output on recipe failure.
+.DELETE_ON_ERROR:
+
+
+#=============================================================================
+# Special targets provided by cmake.
+
+# Disable implicit rules so canonical targets will work.
+.SUFFIXES:
+
+
+# Disable VCS-based implicit rules.
+% : %,v
+
+
+# Disable VCS-based implicit rules.
+% : RCS/%
+
+
+# Disable VCS-based implicit rules.
+% : RCS/%,v
+
+
+# Disable VCS-based implicit rules.
+% : SCCS/s.%
+
+
+# Disable VCS-based implicit rules.
+% : s.%
+
+
+.SUFFIXES: .hpux_make_needs_suffix_list
+
+
+# Command-line flag to silence nested $(MAKE).
+$(VERBOSE)MAKESILENT = -s
+
+# Suppress display of executed commands.
+$(VERBOSE).SILENT:
+
+
+# A target that is always out of date.
+cmake_force:
+
+.PHONY : cmake_force
+
+#=============================================================================
+# Set environment variables for the build.
+
+# The shell in which to execute make rules.
+SHELL = /bin/sh
+
+# The CMake executable.
+CMAKE_COMMAND = /usr/pkg/bin/cmake
+
+# The command to remove a file.
+RM = /usr/pkg/bin/cmake -E rm -f
+
+# Escaping for special characters.
+EQUALS = =
+
+# The top-level source directory on which CMake was run.
+CMAKE_SOURCE_DIR = /home/ryoon/tmp4/llvm-7.0.1.src
+
+# The top-level build directory on which CMake was run.
+CMAKE_BINARY_DIR = /home/ryoon/tmp4/build
+
+# Utility rule file for llvm_vcsrevision_h.
+
+# Include the progress variables for this target.
+include include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/progress.make
+
+include/llvm/Support/CMakeFiles/llvm_vcsrevision_h: include/llvm/Support/VCSRevision.h
+
+
+llvm_vcsrevision_h: include/llvm/Support/CMakeFiles/llvm_vcsrevision_h
+llvm_vcsrevision_h: include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/build.make
+
+.PHONY : llvm_vcsrevision_h
+
+# Rule to build all files generated by this target.
+include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/build: llvm_vcsrevision_h
+
+.PHONY : include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/build
+
+include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/clean:
+	cd /home/ryoon/tmp4/build/include/llvm/Support && $(CMAKE_COMMAND) -P CMakeFiles/llvm_vcsrevision_h.dir/cmake_clean.cmake
+.PHONY : include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/clean
+
+include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/depend:
+	cd /home/ryoon/tmp4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ryoon/tmp4/llvm-7.0.1.src /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Support /home/ryoon/tmp4/build /home/ryoon/tmp4/build/include/llvm/Support /home/ryoon/tmp4/build/include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/DependInfo.cmake --color=$(COLOR)
+.PHONY : include/llvm/Support/CMakeFiles/llvm_vcsrevision_h.dir/depend
+
