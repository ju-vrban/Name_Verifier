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
CMAKE_SOURCE_DIR = /home/jurica/Name_Verifier

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jurica/Name_Verifier/build

# Include any dependencies generated for this target.
include CMakeFiles/Name_Verifier.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Name_Verifier.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Name_Verifier.dir/flags.make

CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.o: CMakeFiles/Name_Verifier.dir/flags.make
CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.o: Name_Verifier_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jurica/Name_Verifier/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.o -c /home/jurica/Name_Verifier/build/Name_Verifier_autogen/mocs_compilation.cpp

CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jurica/Name_Verifier/build/Name_Verifier_autogen/mocs_compilation.cpp > CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.i

CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jurica/Name_Verifier/build/Name_Verifier_autogen/mocs_compilation.cpp -o CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.s

CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.o: CMakeFiles/Name_Verifier.dir/flags.make
CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.o: ../src/check_file_contents.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jurica/Name_Verifier/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.o -c /home/jurica/Name_Verifier/src/check_file_contents.cpp

CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jurica/Name_Verifier/src/check_file_contents.cpp > CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.i

CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jurica/Name_Verifier/src/check_file_contents.cpp -o CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.s

CMakeFiles/Name_Verifier.dir/src/main.cpp.o: CMakeFiles/Name_Verifier.dir/flags.make
CMakeFiles/Name_Verifier.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jurica/Name_Verifier/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Name_Verifier.dir/src/main.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Name_Verifier.dir/src/main.cpp.o -c /home/jurica/Name_Verifier/src/main.cpp

CMakeFiles/Name_Verifier.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Name_Verifier.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jurica/Name_Verifier/src/main.cpp > CMakeFiles/Name_Verifier.dir/src/main.cpp.i

CMakeFiles/Name_Verifier.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Name_Verifier.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jurica/Name_Verifier/src/main.cpp -o CMakeFiles/Name_Verifier.dir/src/main.cpp.s

CMakeFiles/Name_Verifier.dir/src/read_file.cpp.o: CMakeFiles/Name_Verifier.dir/flags.make
CMakeFiles/Name_Verifier.dir/src/read_file.cpp.o: ../src/read_file.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jurica/Name_Verifier/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Name_Verifier.dir/src/read_file.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Name_Verifier.dir/src/read_file.cpp.o -c /home/jurica/Name_Verifier/src/read_file.cpp

CMakeFiles/Name_Verifier.dir/src/read_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Name_Verifier.dir/src/read_file.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jurica/Name_Verifier/src/read_file.cpp > CMakeFiles/Name_Verifier.dir/src/read_file.cpp.i

CMakeFiles/Name_Verifier.dir/src/read_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Name_Verifier.dir/src/read_file.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jurica/Name_Verifier/src/read_file.cpp -o CMakeFiles/Name_Verifier.dir/src/read_file.cpp.s

# Object files for target Name_Verifier
Name_Verifier_OBJECTS = \
"CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.o" \
"CMakeFiles/Name_Verifier.dir/src/main.cpp.o" \
"CMakeFiles/Name_Verifier.dir/src/read_file.cpp.o"

# External object files for target Name_Verifier
Name_Verifier_EXTERNAL_OBJECTS =

Name_Verifier: CMakeFiles/Name_Verifier.dir/Name_Verifier_autogen/mocs_compilation.cpp.o
Name_Verifier: CMakeFiles/Name_Verifier.dir/src/check_file_contents.cpp.o
Name_Verifier: CMakeFiles/Name_Verifier.dir/src/main.cpp.o
Name_Verifier: CMakeFiles/Name_Verifier.dir/src/read_file.cpp.o
Name_Verifier: CMakeFiles/Name_Verifier.dir/build.make
Name_Verifier: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
Name_Verifier: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
Name_Verifier: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
Name_Verifier: CMakeFiles/Name_Verifier.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jurica/Name_Verifier/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Name_Verifier"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Name_Verifier.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Name_Verifier.dir/build: Name_Verifier

.PHONY : CMakeFiles/Name_Verifier.dir/build

CMakeFiles/Name_Verifier.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Name_Verifier.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Name_Verifier.dir/clean

CMakeFiles/Name_Verifier.dir/depend:
	cd /home/jurica/Name_Verifier/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jurica/Name_Verifier /home/jurica/Name_Verifier /home/jurica/Name_Verifier/build /home/jurica/Name_Verifier/build /home/jurica/Name_Verifier/build/CMakeFiles/Name_Verifier.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Name_Verifier.dir/depend
