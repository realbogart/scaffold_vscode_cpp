#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

source ${SCRIPT_DIR}/conan_install.sh

cmake -G "Ninja Multi-Config" -B ${BUILD_DIR} -S ${SOURCE_DIR} --install-prefix ${INSTALL_DIR} --toolchain ${CONAN_OUTPUT_DIR}/conan_toolchain.cmake
