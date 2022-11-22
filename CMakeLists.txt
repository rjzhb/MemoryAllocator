cmake_minimum_required(VERSION 3.16)
project(MemoryAllocator)

set(CMAKE_CXX_STANDARD 14)
set(MEMORY_ALLOCATOR_SRC_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/src/include)

include_directories(${MEMORY_ALLOCATOR_SRC_INCLUDE_DIR})
add_executable(MemoryAllocator main.cpp src/include/memory_allocator.h src/allocator/firstfit_allocator.cpp src/include/firstfit_allocator.h src/allocator/bestfit_allocator.cpp src/include/bestfit_allocator.h)
add_subdirectory(src)