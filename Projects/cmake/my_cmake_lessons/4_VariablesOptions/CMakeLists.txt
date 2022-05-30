# 0.) Create code and CMake File
# 1.) mkdir build && cd build
# 2.) cmake ..
# 3.) cmake --build .
# 4.) ./Executable

cmake_minimum_required(VERSION 3.16) # always required

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD          17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS        OFF)


set(LIBRARY_NAME Library)
set(EXECUTABLE_NAME Executable)

option(COMPILE_EXECUTABLE "Whether to compile the executable" OFF)

add_subdirectory(src)
if (COMPILE_EXECUTABLE)
    add_subdirectory(app)
else()
    message("W/O EXECUTABLE COMPILING")
endif()



