cmake_minimum_required(VERSION 3.23)

project(scaffold)

add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE "main.cpp")

if(MSVC)
  target_compile_options(${PROJECT_NAME} PRIVATE /W4 /WX)
else()
  target_compile_options(${PROJECT_NAME} PRIVATE -Wall -Wextra -Wpedantic -Werror)
endif()

install(
    TARGETS ${PROJECT_NAME}
    CONFIGURATIONS Release
    RUNTIME DESTINATION "."
)
