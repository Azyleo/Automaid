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

# Utility rule file for test_pkg_geneus.

# Include the progress variables for this target.
include test_pkg\CMakeFiles\test_pkg_geneus.dir\progress.make

test_pkg_geneus: test_pkg\CMakeFiles\test_pkg_geneus.dir\build.make

.PHONY : test_pkg_geneus

# Rule to build all files generated by this target.
test_pkg\CMakeFiles\test_pkg_geneus.dir\build: test_pkg_geneus

.PHONY : test_pkg\CMakeFiles\test_pkg_geneus.dir\build

test_pkg\CMakeFiles\test_pkg_geneus.dir\clean:
	cd C:\Automaid\build\test_pkg
	$(CMAKE_COMMAND) -P CMakeFiles\test_pkg_geneus.dir\cmake_clean.cmake
	cd C:\Automaid\build
.PHONY : test_pkg\CMakeFiles\test_pkg_geneus.dir\clean

test_pkg\CMakeFiles\test_pkg_geneus.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Automaid\src C:\Automaid\src\test_pkg C:\Automaid\build C:\Automaid\build\test_pkg C:\Automaid\build\test_pkg\CMakeFiles\test_pkg_geneus.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test_pkg\CMakeFiles\test_pkg_geneus.dir\depend

