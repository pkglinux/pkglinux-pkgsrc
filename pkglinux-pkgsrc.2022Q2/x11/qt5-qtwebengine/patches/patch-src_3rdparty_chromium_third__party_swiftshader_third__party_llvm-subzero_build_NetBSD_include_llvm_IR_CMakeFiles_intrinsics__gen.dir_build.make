$NetBSD: patch-src_3rdparty_chromium_third__party_swiftshader_third__party_llvm-subzero_build_NetBSD_include_llvm_IR_CMakeFiles_intrinsics__gen.dir_build.make,v 1.1 2021/08/03 21:04:36 markd Exp $

--- src/3rdparty/chromium/third_party/swiftshader/third_party/llvm-subzero/build/NetBSD/include/llvm/IR/CMakeFiles/intrinsics_gen.dir/build.make.orig	2020-07-23 08:46:21.597505478 +0000
+++ src/3rdparty/chromium/third_party/swiftshader/third_party/llvm-subzero/build/NetBSD/include/llvm/IR/CMakeFiles/intrinsics_gen.dir/build.make
@@ -0,0 +1,260 @@
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
+# Utility rule file for intrinsics_gen.
+
+# Include the progress variables for this target.
+include include/llvm/IR/CMakeFiles/intrinsics_gen.dir/progress.make
+
+include/llvm/IR/CMakeFiles/intrinsics_gen: include/llvm/IR/Attributes.inc
+include/llvm/IR/CMakeFiles/intrinsics_gen: include/llvm/IR/IntrinsicEnums.inc
+include/llvm/IR/CMakeFiles/intrinsics_gen: include/llvm/IR/IntrinsicImpl.inc
+
+
+include/llvm/IR/Attributes.inc: include/llvm/IR/Attributes.inc.tmp
+	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ryoon/tmp4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Updating Attributes.inc..."
+	cd /home/ryoon/tmp4/build/include/llvm/IR && /usr/pkg/bin/cmake -E copy_if_different /home/ryoon/tmp4/build/include/llvm/IR/Attributes.inc.tmp /home/ryoon/tmp4/build/include/llvm/IR/Attributes.inc
+
+include/llvm/IR/IntrinsicEnums.inc: include/llvm/IR/IntrinsicEnums.inc.tmp
+	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ryoon/tmp4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Updating IntrinsicEnums.inc..."
+	cd /home/ryoon/tmp4/build/include/llvm/IR && /usr/pkg/bin/cmake -E copy_if_different /home/ryoon/tmp4/build/include/llvm/IR/IntrinsicEnums.inc.tmp /home/ryoon/tmp4/build/include/llvm/IR/IntrinsicEnums.inc
+
+include/llvm/IR/IntrinsicImpl.inc: include/llvm/IR/IntrinsicImpl.inc.tmp
+	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ryoon/tmp4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Updating IntrinsicImpl.inc..."
+	cd /home/ryoon/tmp4/build/include/llvm/IR && /usr/pkg/bin/cmake -E copy_if_different /home/ryoon/tmp4/build/include/llvm/IR/IntrinsicImpl.inc.tmp /home/ryoon/tmp4/build/include/llvm/IR/IntrinsicImpl.inc
+
+include/llvm/IR/Attributes.inc.tmp: bin/llvm-tblgen
+include/llvm/IR/Attributes.inc.tmp: bin/llvm-tblgen
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Attributes.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAArch64.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAMDGPU.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsARM.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsBPF.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsHexagon.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsMips.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsNVVM.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsPowerPC.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsSystemZ.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsWebAssembly.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsX86.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsXCore.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/CodeGen/SDNodeProperties.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/CodeGen/ValueTypes.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Attributes.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAArch64.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAMDGPU.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsARM.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsBPF.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsHexagon.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsMips.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsNVVM.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsPowerPC.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsSystemZ.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsWebAssembly.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsX86.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsXCore.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Option/OptParser.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/TableGen/SearchableTable.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GenericOpcodes.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/RegisterBank.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/SelectionDAGCompat.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/Target.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/Target.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetCallingConv.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetInstrPredicate.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetItinerary.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetSchedule.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetSelectionDAG.td
+include/llvm/IR/Attributes.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Attributes.td
+	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ryoon/tmp4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building Attributes.inc..."
+	cd /home/ryoon/tmp4/build/include/llvm/IR && ../../../bin/llvm-tblgen -gen-attrs -I /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR -I /home/ryoon/tmp4/llvm-7.0.1.src/include /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Attributes.td -o /home/ryoon/tmp4/build/include/llvm/IR/Attributes.inc.tmp
+
+include/llvm/IR/IntrinsicEnums.inc.tmp: bin/llvm-tblgen
+include/llvm/IR/IntrinsicEnums.inc.tmp: bin/llvm-tblgen
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Attributes.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAArch64.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAMDGPU.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsARM.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsBPF.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsHexagon.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsMips.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsNVVM.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsPowerPC.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsSystemZ.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsWebAssembly.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsX86.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsXCore.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/CodeGen/SDNodeProperties.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/CodeGen/ValueTypes.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Attributes.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAArch64.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAMDGPU.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsARM.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsBPF.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsHexagon.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsMips.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsNVVM.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsPowerPC.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsSystemZ.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsWebAssembly.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsX86.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsXCore.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Option/OptParser.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/TableGen/SearchableTable.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GenericOpcodes.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/RegisterBank.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/SelectionDAGCompat.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/Target.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/Target.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetCallingConv.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetInstrPredicate.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetItinerary.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetSchedule.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetSelectionDAG.td
+include/llvm/IR/IntrinsicEnums.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td
+	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ryoon/tmp4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building IntrinsicEnums.inc..."
+	cd /home/ryoon/tmp4/build/include/llvm/IR && ../../../bin/llvm-tblgen -gen-intrinsic-enums -I /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR -I /home/ryoon/tmp4/llvm-7.0.1.src/include /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td -o /home/ryoon/tmp4/build/include/llvm/IR/IntrinsicEnums.inc.tmp
+
+include/llvm/IR/IntrinsicImpl.inc.tmp: bin/llvm-tblgen
+include/llvm/IR/IntrinsicImpl.inc.tmp: bin/llvm-tblgen
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Attributes.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAArch64.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAMDGPU.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsARM.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsBPF.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsHexagon.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsMips.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsNVVM.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsPowerPC.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsSystemZ.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsWebAssembly.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsX86.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsXCore.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/CodeGen/SDNodeProperties.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/CodeGen/ValueTypes.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Attributes.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAArch64.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsAMDGPU.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsARM.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsBPF.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsHexagon.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsMips.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsNVVM.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsPowerPC.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsSystemZ.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsWebAssembly.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsX86.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/IntrinsicsXCore.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Option/OptParser.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/TableGen/SearchableTable.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GenericOpcodes.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/RegisterBank.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/SelectionDAGCompat.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/GlobalISel/Target.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/Target.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetCallingConv.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetInstrPredicate.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetItinerary.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetSchedule.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/Target/TargetSelectionDAG.td
+include/llvm/IR/IntrinsicImpl.inc.tmp: /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td
+	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ryoon/tmp4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building IntrinsicImpl.inc..."
+	cd /home/ryoon/tmp4/build/include/llvm/IR && ../../../bin/llvm-tblgen -gen-intrinsic-impl -I /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR -I /home/ryoon/tmp4/llvm-7.0.1.src/include /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR/Intrinsics.td -o /home/ryoon/tmp4/build/include/llvm/IR/IntrinsicImpl.inc.tmp
+
+intrinsics_gen: include/llvm/IR/CMakeFiles/intrinsics_gen
+intrinsics_gen: include/llvm/IR/Attributes.inc
+intrinsics_gen: include/llvm/IR/IntrinsicEnums.inc
+intrinsics_gen: include/llvm/IR/IntrinsicImpl.inc
+intrinsics_gen: include/llvm/IR/Attributes.inc.tmp
+intrinsics_gen: include/llvm/IR/IntrinsicEnums.inc.tmp
+intrinsics_gen: include/llvm/IR/IntrinsicImpl.inc.tmp
+intrinsics_gen: include/llvm/IR/CMakeFiles/intrinsics_gen.dir/build.make
+
+.PHONY : intrinsics_gen
+
+# Rule to build all files generated by this target.
+include/llvm/IR/CMakeFiles/intrinsics_gen.dir/build: intrinsics_gen
+
+.PHONY : include/llvm/IR/CMakeFiles/intrinsics_gen.dir/build
+
+include/llvm/IR/CMakeFiles/intrinsics_gen.dir/clean:
+	cd /home/ryoon/tmp4/build/include/llvm/IR && $(CMAKE_COMMAND) -P CMakeFiles/intrinsics_gen.dir/cmake_clean.cmake
+.PHONY : include/llvm/IR/CMakeFiles/intrinsics_gen.dir/clean
+
+include/llvm/IR/CMakeFiles/intrinsics_gen.dir/depend:
+	cd /home/ryoon/tmp4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ryoon/tmp4/llvm-7.0.1.src /home/ryoon/tmp4/llvm-7.0.1.src/include/llvm/IR /home/ryoon/tmp4/build /home/ryoon/tmp4/build/include/llvm/IR /home/ryoon/tmp4/build/include/llvm/IR/CMakeFiles/intrinsics_gen.dir/DependInfo.cmake --color=$(COLOR)
+.PHONY : include/llvm/IR/CMakeFiles/intrinsics_gen.dir/depend
+
