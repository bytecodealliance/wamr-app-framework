# Copyright (C) 2019 Intel Corporation.  All rights reserved.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

cmake_minimum_required(VERSION 3.8.2)

include($ENV{ZEPHYR_BASE}/cmake/app/boilerplate.cmake NO_POLICY_SCOPE)
project(NONE)

set (WAMR_BUILD_PLATFORM "zephyr")

enable_language (ASM)

add_definitions(-DWA_MALLOC=wasm_runtime_malloc)
add_definitions(-DWA_FREE=wasm_runtime_free)

# Build as THUMB by default
# change to "ARM[sub]", "THUMB[sub]", "X86_32", "MIPS_32" or "XTENSA_32"
# if we want to support arm_32, x86, mips or xtensa
if (NOT DEFINED WAMR_BUILD_TARGET)
  set (WAMR_BUILD_TARGET "THUMBV7")
endif ()

if (NOT DEFINED WAMR_BUILD_INTERP)
  # Enable Interpreter by default
  set (WAMR_BUILD_INTERP 1)
endif ()

if (NOT DEFINED WAMR_BUILD_AOT)
  set (WAMR_BUILD_AOT 1)
endif ()

if (NOT DEFINED WAMR_BUILD_JIT)
  # Disable JIT by default.
  set (WAMR_BUILD_JIT 0)
endif ()

if (NOT DEFINED WAMR_BUILD_LIBC_BUILTIN)
  set (WAMR_BUILD_LIBC_BUILTIN 1)
endif ()

if (NOT DEFINED WAMR_BUILD_LIBC_WASI)
  set (WAMR_BUILD_LIBC_WASI 0)
endif ()

if (NOT DEFINED WAMR_BUILD_APP_FRAMEWORK)
  set (WAMR_BUILD_APP_FRAMEWORK 1)
endif ()

if (NOT DEFINED WAMR_BUILD_APP_LIST)
  set (WAMR_BUILD_APP_LIST WAMR_APP_BUILD_BASE WAMR_APP_BUILD_SENSOR WAMR_APP_BUILD_CONNECTION)
endif ()

if (NOT DEFINED APP_MGR_DIR)
    set (APP_MGR_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../../../app-mgr)
endif ()
if (NOT DEFINED APP_FRAMEWORK_DIR)
    set (APP_FRAMEWORK_DIR ${WAMR_ROOT_DIR}/../../../../app-framework)
endif ()

set (WAMR_ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/wamr)
include (${WAMR_ROOT_DIR}/build-scripts/runtime_lib.cmake)

if (WAMR_BUILD_APP_FRAMEWORK EQUAL 1)
    include (${APP_FRAMEWORK_DIR}/app_framework.cmake)
    include (${WAMR_ROOT_DIR}/core/share/coap/lib_coap.cmake)
    include (${APP_MGR_DIR}/app-manager/app_mgr.cmake)
    include (${APP_MGR_DIR}/app-mgr-shared/app_mgr_shared.cmake)
    set (APP_FRAMEWORK_SRCS
         ${APP_MGR_SOURCE}
         ${WASM_APP_LIB_SOURCE_ALL}
         ${NATIVE_INTERFACE_SOURCE}
         )
endif ()

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../src)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../src/platform/zephyr)

set (LVGL_DRV_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/../src/platform/zephyr/display_ili9340_adafruit_1480.c
    ${CMAKE_CURRENT_SOURCE_DIR}/../src/platform/zephyr/display_ili9340.c
    ${CMAKE_CURRENT_SOURCE_DIR}/../src/platform/zephyr/display_indev.c
    ${CMAKE_CURRENT_SOURCE_DIR}/../src/platform/zephyr/XPT2046.c
    )

target_sources(app PRIVATE
               ${WAMR_RUNTIME_LIB_SOURCE}
               ${APP_FRAMEWORK_SRCS}
               ${LVGL_DRV_SRCS}
               ${CMAKE_CURRENT_SOURCE_DIR}/../src/platform/zephyr/main.c
               ${CMAKE_CURRENT_SOURCE_DIR}/../src/platform/zephyr/iwasm_main.c
              )
