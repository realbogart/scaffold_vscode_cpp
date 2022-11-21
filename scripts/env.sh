#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SOURCE_DIR=${SCRIPT_DIR}/..
BUILD_DIR=${SCRIPT_DIR}/../build
INSTALL_DIR=${SCRIPT_DIR}/../install
CONAN_OUTPUT_DIR=${BUILD_DIR}/conanfiles
