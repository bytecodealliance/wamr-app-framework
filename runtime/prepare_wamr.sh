#!/bin/bash
CURR=$PWD
WAMR_APP_FRAMEWORK=$(realpath ${CURR}/..)
WAMR_DIR=${CURR}/wasm-micro-runtime
file_path="wasm-micro-runtime"

if [[ ! -d "$file_path" && ! -h "$file_path" ]]; then
    echo "Download WAMR...\n"
    git clone https://github.com/bytecodealliance/wasm-micro-runtime.git
    echo "\nFinish Downloading WAMR."
fi

if [ $? -ne 0 ]; then
  echo "clone wamr failed with error code $?."
  exit 1
fi

# test if wamr/wamr-app-framework existed

cd "${WAMR_DIR}"

if [ ! -e "$WAMR_DIR/wamr-app-framework" ]; then
    # create a soft link
    ln -sf "$WAMR_APP_FRAMEWORK" "./wamr-app-framework"
    echo "create a fost link: ${WAMR_DIR}/wamr-app-framework --> ${WAMR_APP_FRAMEWORK}"
fi

