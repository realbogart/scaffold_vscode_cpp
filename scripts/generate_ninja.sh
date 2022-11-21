#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cmake -G "Ninja Multi-Config" -B ${SCRIPT_DIR}/../build -S ${SCRIPT_DIR}/.. --install-prefix ${SCRIPT_DIR}/../install