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

# Utility rule file for clean_test_results_ecto_opencv.

# Include the progress variables for this target.
include ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/progress.make

ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv:
	cd /home/willy/ws/build/ecto_opencv/test && /usr/bin/python2 /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/willy/ws/build/test_results/ecto_opencv

clean_test_results_ecto_opencv: ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv
clean_test_results_ecto_opencv: ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/build.make

.PHONY : clean_test_results_ecto_opencv

# Rule to build all files generated by this target.
ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/build: clean_test_results_ecto_opencv

.PHONY : ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/build

ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/clean:
	cd /home/willy/ws/build/ecto_opencv/test && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_ecto_opencv.dir/cmake_clean.cmake
.PHONY : ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/clean

ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/depend:
	cd /home/willy/ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/willy/ws/src /home/willy/ws/src/ecto_opencv/test /home/willy/ws/build /home/willy/ws/build/ecto_opencv/test /home/willy/ws/build/ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ecto_opencv/test/CMakeFiles/clean_test_results_ecto_opencv.dir/depend

