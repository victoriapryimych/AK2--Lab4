cmake_minimum_required(VERSION 2.8)

project(helloWorld)

set(SOURCE_EXE main.cpp)

set(SOURCE_LIB foo.cpp)

add_library(fooLib STATIC ${SOURCE_LIB})

add_executable(main ${SOURCE_EXE})

target_link_libraries(main fooLib)
