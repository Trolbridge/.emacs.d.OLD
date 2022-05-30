add_executable(Executable main.cc)

# Link all the objects
target_link_libraries(${EXECUTABLE_NAME} PUBLIC ${LIBRARY_NAME})
