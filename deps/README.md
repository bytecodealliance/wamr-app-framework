# Usage Guide

This guide explains how to use the `download.sh` shell script.

The script will clone the necessary repositories based on the conditions specified in the script. The script uses the following environment variables to control the cloning behavior: `LVGL`, `LV_DRIVERS`, `WAMR`. You can set these environment variables before(or when) running the script to customize the cloning behavior.

- If the `lvgl` directory does not exist and the `LVGL` environment variable is not set to `0`, the script will clone the `lvgl` repository from GitHub.

- If the `lv_drivers` directory does not exist and the `LV_DRIVERS` environment variable is not set to `0`, the script will clone the `lv_drivers` repository from GitHub.

- If the `wasm-micro-runtime` directory does not exist and the `WAMR` environment variable is not set to `0`, the script will clone the `wasm-micro-runtime` repository from GitHub.

After running the script, you should have the necessary dependencies cloned in the respective directories.

Example usage:

```shell
# download ld_drivers and wasm-micro-runtime
LVGL=0 ./download.sh
```