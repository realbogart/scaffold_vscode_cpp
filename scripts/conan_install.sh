#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ${SCRIPT_DIR}/env.sh

conan config install ${SOURCE_DIR}/.conan_config

conan install . -pr:b linux-clang-debug -pr:h linux-clang-debug --build=missing -of ${CONAN_OUTPUT_DIR}
conan install . -pr:b linux-clang-release -pr:h linux-clang-release --build=missing -of ${CONAN_OUTPUT_DIR}
