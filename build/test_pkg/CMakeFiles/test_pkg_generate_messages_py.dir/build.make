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

# Utility rule file for test_pkg_generate_messages_py.

# Include the progress variables for this target.
include test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\progress.make

test_pkg\CMakeFiles\test_pkg_generate_messages_py: C:\Automaid\devel\lib\site-packages\test_pkg\msg\_test.py
test_pkg\CMakeFiles\test_pkg_generate_messages_py: C:\Automaid\devel\lib\site-packages\test_pkg\msg\__init__.py
	cd C:\Automaid\build\test_pkg
	cd C:\Automaid\build

C:\Automaid\devel\lib\site-packages\test_pkg\msg\_test.py: C:\opt\ros\melodic\x64\lib\genpy\genmsg_py.py
C:\Automaid\devel\lib\site-packages\test_pkg\msg\_test.py: C:\Automaid\src\test_pkg\msg\test.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Automaid\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python from MSG test_pkg/test"
	cd C:\Automaid\build\test_pkg
	call ..\catkin_generated\env_cached.bat C:/opt/python27amd64/python.exe C:/opt/ros/melodic/x64/share/genpy/cmake/../../../lib/genpy/genmsg_py.py C:/Automaid/src/test_pkg/msg/test.msg -Itest_pkg:C:/Automaid/src/test_pkg/msg -Istd_msgs:C:/opt/ros/melodic/x64/share/std_msgs/cmake/../msg -p test_pkg -o C:/Automaid/devel/lib/site-packages/test_pkg/msg
	cd C:\Automaid\build

C:\Automaid\devel\lib\site-packages\test_pkg\msg\__init__.py: C:\opt\ros\melodic\x64\lib\genpy\genmsg_py.py
C:\Automaid\devel\lib\site-packages\test_pkg\msg\__init__.py: C:\Automaid\devel\lib\site-packages\test_pkg\msg\_test.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Automaid\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python msg __init__.py for test_pkg"
	cd C:\Automaid\build\test_pkg
	call ..\catkin_generated\env_cached.bat C:/opt/python27amd64/python.exe C:/opt/ros/melodic/x64/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o C:/Automaid/devel/lib/site-packages/test_pkg/msg --initpy
	cd C:\Automaid\build

test_pkg_generate_messages_py: test_pkg\CMakeFiles\test_pkg_generate_messages_py
test_pkg_generate_messages_py: C:\Automaid\devel\lib\site-packages\test_pkg\msg\_test.py
test_pkg_generate_messages_py: C:\Automaid\devel\lib\site-packages\test_pkg\msg\__init__.py
test_pkg_generate_messages_py: test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\build.make

.PHONY : test_pkg_generate_messages_py

# Rule to build all files generated by this target.
test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\build: test_pkg_generate_messages_py

.PHONY : test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\build

test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\clean:
	cd C:\Automaid\build\test_pkg
	$(CMAKE_COMMAND) -P CMakeFiles\test_pkg_generate_messages_py.dir\cmake_clean.cmake
	cd C:\Automaid\build
.PHONY : test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\clean

test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Automaid\src C:\Automaid\src\test_pkg C:\Automaid\build C:\Automaid\build\test_pkg C:\Automaid\build\test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test_pkg\CMakeFiles\test_pkg_generate_messages_py.dir\depend

