cmake_minimum_required(VERSION 3.23)

if(DEFINED CMAKE_TOOLCHAIN_FILE)
  message( STATUS "Using toolchain file '${CMAKE_TOOLCHAIN_FILE}'")
endif()

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include("settings.cmake")

project(${PROJECT_NAME})

add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME} 
  PRIVATE 
    main.cpp
)

install(
    TARGETS ${PROJECT_NAME}
    CONFIGURATIONS Release
    RUNTIME DESTINATION "."
)
