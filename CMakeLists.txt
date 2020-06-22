cmake_minimum_required(VERSION 3.16)

project(retroarch_duxtinto C CXX)

# Compile definitions
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Modules
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/modules")

# Targets
include(cmake/targets/retroarch-target.cmake)
include(cmake/targets/mame_libretro-target.cmake)
