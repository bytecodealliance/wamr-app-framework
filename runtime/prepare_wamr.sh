#!/bin/bash

file_path="wasm-micro-runtime"

if [[ ! -d "$file_path" && ! -h "$file_path" ]]; then
    echo "Download WAMR...\n"
    git clone https://github.com/bytecodealliance/wasm-micro-runtime.git
    echo "\nFinish Downloading WAMR."
fi

