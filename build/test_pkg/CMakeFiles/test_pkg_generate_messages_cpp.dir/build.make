# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\opt\python27amd64\Lib\site-packages\cmake\data\bin\cmake.exe

# The command to remove a file.
RM = C:\opt\python27amd64\Lib\site-packages\cmake\data\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Automaid\src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Automaid\build

# Utility rule file for test_pkg_generate_messages_cpp.

# Include the progress variables for this target.
include test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\progress.make

test_pkg\CMakeFiles\test_pkg_generate_messages_cpp: C:\Automaid\devel\include\test_pkg\test.h
	cd C:\Automaid\build\test_pkg
	cd C:\Automaid\build

C:\Automaid\devel\include\test_pkg\test.h: C:\opt\ros\melodic\x64\lib\gencpp\gen_cpp.py
C:\Automaid\devel\include\test_pkg\test.h: C:\Automaid\src\test_pkg\msg\test.msg
C:\Automaid\devel\include\test_pkg\test.h: C:\opt\ros\melodic\x64\share\gencpp\msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Automaid\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from test_pkg/test.msg"
	cd C:\Automaid\src\test_pkg
	call C:\Automaid\build\catkin_generated\env_cached.bat C:/opt/python27amd64/python.exe C:/opt/ros/melodic/x64/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py C:/Automaid/src/test_pkg/msg/test.msg -Itest_pkg:C:/Automaid/src/test_pkg/msg -Istd_msgs:C:/opt/ros/melodic/x64/share/std_msgs/cmake/../msg -p test_pkg -o C:/Automaid/devel/include/test_pkg -e C:/opt/ros/melodic/x64/share/gencpp/cmake/..
	cd C:\Automaid\build

test_pkg_generate_messages_cpp: test_pkg\CMakeFiles\test_pkg_generate_messages_cpp
test_pkg_generate_messages_cpp: C:\Automaid\devel\include\test_pkg\test.h
test_pkg_generate_messages_cpp: test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\build.make

.PHONY : test_pkg_generate_messages_cpp

# Rule to build all files generated by this target.
test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\build: test_pkg_generate_messages_cpp

.PHONY : test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\build

test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\clean:
	cd C:\Automaid\build\test_pkg
	$(CMAKE_COMMAND) -P CMakeFiles\test_pkg_generate_messages_cpp.dir\cmake_clean.cmake
	cd C:\Automaid\build
.PHONY : test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\clean

test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Automaid\src C:\Automaid\src\test_pkg C:\Automaid\build C:\Automaid\build\test_pkg C:\Automaid\build\test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test_pkg\CMakeFiles\test_pkg_generate_messages_cpp.dir\depend

