# CMake version
cmake_minimum_required(VERSION 2.8)

# project info
project(ThulacgoTest)

# source dir
aux_source_directory(. DIR_SRCS)

# add dir
include_directories(cppthulac)

# exe
add_executable(ThulacgoTest cpptest/main.cpp ${DIR_SRCS})

# def
add_definitions(-std=c++11 -DLOGGING_LEVEL=LL_WARNING -O3 -Wall)

