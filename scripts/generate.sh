#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SOURCE_DIR=${SCRIPT_DIR}/..
BUILD_DIR=${SCRIPT_DIR}/../build
INSTALL_DIR=${SCRIPT_DIR}/../install
CONAN_OUTPUT_DIR=${BUILD_DIR}/conanfiles

conan config install ${SOURCE_DIR}/.conan_config

conan install . -pr linux-clang-debug --build=missing -if ${CONAN_OUTPUT_DIR}
conan install . -pr linux-clang-release --build=missing -if ${CONAN_OUTPUT_DIR}

cmake -G "Ninja Multi-Config" -B ${BUILD_DIR} -S ${SOURCE_DIR} --install-prefix ${INSTALL_DIR} --toolchain ${CONAN_OUTPUT_DIR}/conan_toolchain.cmake
