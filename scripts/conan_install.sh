#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ${SCRIPT_DIR}/env.sh

conan config install ${SOURCE_DIR}/.conan_config

conan install . -pr linux-clang-debug --build=missing -if ${CONAN_OUTPUT_DIR}
conan install . -pr linux-clang-release --build=missing -if ${CONAN_OUTPUT_DIR}
