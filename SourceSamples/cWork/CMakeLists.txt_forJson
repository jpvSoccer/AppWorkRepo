cmake_minimum_required(VERSION 3.23)
project(jasonParse C)

set(CMAKE_C_STANDARD 99)

add_executable(jasonParse main.c)

find_package(json-c CONFIG)
target_link_libraries(${PROJECT_NAME} PRIVATE json-c::json-c)

