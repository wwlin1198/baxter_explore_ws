# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/willy/ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/willy/ws/build

# Utility rule file for _run_tests_ecto_openni.

# Include the progress variables for this target.
include ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/progress.make

_run_tests_ecto_openni: ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/build.make

.PHONY : _run_tests_ecto_openni

# Rule to build all files generated by this target.
ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/build: _run_tests_ecto_openni

.PHONY : ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/build

ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/clean:
	cd /home/willy/ws/build/ecto_openni/test && $(CMAKE_COMMAND) -P CMakeFiles/_run_tests_ecto_openni.dir/cmake_clean.cmake
.PHONY : ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/clean

ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/depend:
	cd /home/willy/ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/willy/ws/src /home/willy/ws/src/ecto_openni/test /home/willy/ws/build /home/willy/ws/build/ecto_openni/test /home/willy/ws/build/ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ecto_openni/test/CMakeFiles/_run_tests_ecto_openni.dir/depend

