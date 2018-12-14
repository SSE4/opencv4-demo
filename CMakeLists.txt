cmake_minimum_required(VERSION 3.12)

project(demo)

include(${CMAKE_CURRENT_BINARY_DIR}/conanbuildinfo.cmake)

conan_basic_setup(TARGETS)

add_subdirectory(sobel)
add_subdirectory(sobel-gapi)

install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/assets/valve.png DESTINATION bin)
