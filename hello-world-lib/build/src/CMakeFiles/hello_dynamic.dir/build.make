# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/la/cmakelearnrecord/cmake_learn/hello-world-lib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build

# Include any dependencies generated for this target.
include src/CMakeFiles/hello_dynamic.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/hello_dynamic.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/hello_dynamic.dir/flags.make

src/CMakeFiles/hello_dynamic.dir/hello.c.o: src/CMakeFiles/hello_dynamic.dir/flags.make
src/CMakeFiles/hello_dynamic.dir/hello.c.o: ../src/hello.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/hello_dynamic.dir/hello.c.o"
	cd /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hello_dynamic.dir/hello.c.o   -c /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/src/hello.c

src/CMakeFiles/hello_dynamic.dir/hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hello_dynamic.dir/hello.c.i"
	cd /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/src/hello.c > CMakeFiles/hello_dynamic.dir/hello.c.i

src/CMakeFiles/hello_dynamic.dir/hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hello_dynamic.dir/hello.c.s"
	cd /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/src/hello.c -o CMakeFiles/hello_dynamic.dir/hello.c.s

# Object files for target hello_dynamic
hello_dynamic_OBJECTS = \
"CMakeFiles/hello_dynamic.dir/hello.c.o"

# External object files for target hello_dynamic
hello_dynamic_EXTERNAL_OBJECTS =

lib/libhello.so.1.2: src/CMakeFiles/hello_dynamic.dir/hello.c.o
lib/libhello.so.1.2: src/CMakeFiles/hello_dynamic.dir/build.make
lib/libhello.so.1.2: src/CMakeFiles/hello_dynamic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library ../lib/libhello.so"
	cd /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello_dynamic.dir/link.txt --verbose=$(VERBOSE)
	cd /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/src && $(CMAKE_COMMAND) -E cmake_symlink_library ../lib/libhello.so.1.2 ../lib/libhello.so.1 ../lib/libhello.so

lib/libhello.so.1: lib/libhello.so.1.2
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libhello.so.1

lib/libhello.so: lib/libhello.so.1.2
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libhello.so

# Rule to build all files generated by this target.
src/CMakeFiles/hello_dynamic.dir/build: lib/libhello.so

.PHONY : src/CMakeFiles/hello_dynamic.dir/build

src/CMakeFiles/hello_dynamic.dir/clean:
	cd /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/src && $(CMAKE_COMMAND) -P CMakeFiles/hello_dynamic.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/hello_dynamic.dir/clean

src/CMakeFiles/hello_dynamic.dir/depend:
	cd /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/la/cmakelearnrecord/cmake_learn/hello-world-lib /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/src /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/src /home/la/cmakelearnrecord/cmake_learn/hello-world-lib/build/src/CMakeFiles/hello_dynamic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/hello_dynamic.dir/depend
