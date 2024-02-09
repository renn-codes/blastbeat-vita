# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.27.7/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.27.7/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shoarchomps/VitaSDKProjects/BlastbeatRaiders

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shoarchomps/VitaSDKProjects/BlastbeatRaiders

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.27.7/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.27.7/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/shoarchomps/VitaSDKProjects/BlastbeatRaiders/CMakeFiles /Users/shoarchomps/VitaSDKProjects/BlastbeatRaiders//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/shoarchomps/VitaSDKProjects/BlastbeatRaiders/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named BLASTbeat

# Build rule for target.
BLASTbeat: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 BLASTbeat
.PHONY : BLASTbeat

# fast build rule for target.
BLASTbeat/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/build
.PHONY : BLASTbeat/fast

#=============================================================================
# Target rules for targets named BLASTbeat-velf

# Build rule for target.
BLASTbeat-velf: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 BLASTbeat-velf
.PHONY : BLASTbeat-velf

# fast build rule for target.
BLASTbeat-velf/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat-velf.dir/build.make CMakeFiles/BLASTbeat-velf.dir/build
.PHONY : BLASTbeat-velf/fast

#=============================================================================
# Target rules for targets named BLASTbeat.self-self

# Build rule for target.
BLASTbeat.self-self: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 BLASTbeat.self-self
.PHONY : BLASTbeat.self-self

# fast build rule for target.
BLASTbeat.self-self/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.self-self.dir/build.make CMakeFiles/BLASTbeat.self-self.dir/build
.PHONY : BLASTbeat.self-self/fast

#=============================================================================
# Target rules for targets named BLASTbeat.vpk-vpk

# Build rule for target.
BLASTbeat.vpk-vpk: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 BLASTbeat.vpk-vpk
.PHONY : BLASTbeat.vpk-vpk

# fast build rule for target.
BLASTbeat.vpk-vpk/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.vpk-vpk.dir/build.make CMakeFiles/BLASTbeat.vpk-vpk.dir/build
.PHONY : BLASTbeat.vpk-vpk/fast

lib/piclib.obj: lib/piclib.c.obj
.PHONY : lib/piclib.obj

# target to build an object file
lib/piclib.c.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/lib/piclib.c.obj
.PHONY : lib/piclib.c.obj

lib/piclib.i: lib/piclib.c.i
.PHONY : lib/piclib.i

# target to preprocess a source file
lib/piclib.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/lib/piclib.c.i
.PHONY : lib/piclib.c.i

lib/piclib.s: lib/piclib.c.s
.PHONY : lib/piclib.s

# target to generate assembly for a file
lib/piclib.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/lib/piclib.c.s
.PHONY : lib/piclib.c.s

src/SPRMask.obj: src/SPRMask.cpp.obj
.PHONY : src/SPRMask.obj

# target to build an object file
src/SPRMask.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/SPRMask.cpp.obj
.PHONY : src/SPRMask.cpp.obj

src/SPRMask.i: src/SPRMask.cpp.i
.PHONY : src/SPRMask.i

# target to preprocess a source file
src/SPRMask.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/SPRMask.cpp.i
.PHONY : src/SPRMask.cpp.i

src/SPRMask.s: src/SPRMask.cpp.s
.PHONY : src/SPRMask.s

# target to generate assembly for a file
src/SPRMask.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/SPRMask.cpp.s
.PHONY : src/SPRMask.cpp.s

src/demo.obj: src/demo.cpp.obj
.PHONY : src/demo.obj

# target to build an object file
src/demo.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/demo.cpp.obj
.PHONY : src/demo.cpp.obj

src/demo.i: src/demo.cpp.i
.PHONY : src/demo.i

# target to preprocess a source file
src/demo.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/demo.cpp.i
.PHONY : src/demo.cpp.i

src/demo.s: src/demo.cpp.s
.PHONY : src/demo.s

# target to generate assembly for a file
src/demo.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/demo.cpp.s
.PHONY : src/demo.cpp.s

src/main.obj: src/main.cpp.obj
.PHONY : src/main.obj

# target to build an object file
src/main.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/main.cpp.obj
.PHONY : src/main.cpp.obj

src/main.i: src/main.cpp.i
.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s
.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/ztactor.obj: src/ztactor.cpp.obj
.PHONY : src/ztactor.obj

# target to build an object file
src/ztactor.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/ztactor.cpp.obj
.PHONY : src/ztactor.cpp.obj

src/ztactor.i: src/ztactor.cpp.i
.PHONY : src/ztactor.i

# target to preprocess a source file
src/ztactor.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/ztactor.cpp.i
.PHONY : src/ztactor.cpp.i

src/ztactor.s: src/ztactor.cpp.s
.PHONY : src/ztactor.s

# target to generate assembly for a file
src/ztactor.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/ztactor.cpp.s
.PHONY : src/ztactor.cpp.s

src/ztcommon.obj: src/ztcommon.cpp.obj
.PHONY : src/ztcommon.obj

# target to build an object file
src/ztcommon.cpp.obj:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/ztcommon.cpp.obj
.PHONY : src/ztcommon.cpp.obj

src/ztcommon.i: src/ztcommon.cpp.i
.PHONY : src/ztcommon.i

# target to preprocess a source file
src/ztcommon.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/ztcommon.cpp.i
.PHONY : src/ztcommon.cpp.i

src/ztcommon.s: src/ztcommon.cpp.s
.PHONY : src/ztcommon.s

# target to generate assembly for a file
src/ztcommon.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/BLASTbeat.dir/build.make CMakeFiles/BLASTbeat.dir/src/ztcommon.cpp.s
.PHONY : src/ztcommon.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... BLASTbeat-velf"
	@echo "... BLASTbeat.self-self"
	@echo "... BLASTbeat.vpk-vpk"
	@echo "... BLASTbeat"
	@echo "... lib/piclib.obj"
	@echo "... lib/piclib.i"
	@echo "... lib/piclib.s"
	@echo "... src/SPRMask.obj"
	@echo "... src/SPRMask.i"
	@echo "... src/SPRMask.s"
	@echo "... src/demo.obj"
	@echo "... src/demo.i"
	@echo "... src/demo.s"
	@echo "... src/main.obj"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/ztactor.obj"
	@echo "... src/ztactor.i"
	@echo "... src/ztactor.s"
	@echo "... src/ztcommon.obj"
	@echo "... src/ztcommon.i"
	@echo "... src/ztcommon.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

