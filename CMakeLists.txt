cmake_minimum_required(VERSION 3.23)

if(DEFINED CMAKE_TOOLCHAIN_FILE)
  message( STATUS "Using toolchain file '${CMAKE_TOOLCHAIN_FILE}'")
endif()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include("settings.cmake")

project(${PROJECT_NAME})

add_executable(${PROJECT_NAME})

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 20)

target_sources(${PROJECT_NAME} 
  PRIVATE 
    main.cpp
)

find_package(fmt CONFIG REQUIRED)

target_link_libraries(${PROJECT_NAME}
  PRIVATE
    fmt::fmt
)

install(
    TARGETS ${PROJECT_NAME}
    CONFIGURATIONS Release
    RUNTIME DESTINATION "."
)
