cmake_policy(SET CMP0048 NEW)
project(tinyfsm)
cmake_minimum_required(VERSION 3.20)

add_library(tinyfsm INTERFACE)
target_include_directories(tinyfsm INTERFACE include)
target_compile_options(tinyfsm INTERFACE
  -fno-exceptions
  -fno-rtti
  -Wall
  -Wextra
  -Wctor-dtor-privacy
  -Wcast-align
  -Wpointer-arith
  -Wredundant-decls
  -Wshadow
  -Wcast-qual
  -pedantic)

add_subdirectory(examples)
