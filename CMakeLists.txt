cmake_minimum_required(VERSION 3.15)
project(Cdgemm C)

set(CMAKE_C_STANDARD 11)

add_executable(Cdgemm
        main.c DGEMM.h DGEMM.c SMID_DGEMM.c dgemm_pipeline.c)
