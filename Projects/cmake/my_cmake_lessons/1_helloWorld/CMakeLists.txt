# 0.) Create code and CMake File
# 1.) mkdir build && cd build
# 2.) cmake ..
# 3.) cmake --build .
# 4.) cmake .. && cmake --build .
# 5.) ./Executable

cmake_minimum_required(VERSION 3.16) # always required

project(CppProjectTemplate VERSION 1.0.0 LANGUAGES C CXX)

add_executable(Executable main.cc)
