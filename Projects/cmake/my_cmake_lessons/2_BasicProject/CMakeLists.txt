# 0.) Create code and CMake File
# 1.) mkdir build && cd build
# 2.) cmake ..
# 3.) cmake --build .
# 4.) ./Executable

cmake_minimum_required(VERSION 3.16) # always required

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)

add_library(Library STATIC my_lib.cc)

add_executable(Executable main.cc)

# Link all the objects
target_link_libraries(Executable PUBLIC Library)

