###################################
# My Cool old school style Header #
###################################
set(EXE_SOURCES
    "main.cc")

add_executable(Executable ${EXE_SOURCES})

# Link all the objects
target_link_libraries(${EXECUTABLE_NAME} PUBLIC ${LIBRARY_NAME})
