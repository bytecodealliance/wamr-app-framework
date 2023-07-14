#
# Copyright (c) 2021, RT-Thread Development Team
#
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

import os
from building import *

cwd  = GetCurrentDir()
WAMR_APP_FRAMEWORK_ROOT_DIR = os.path.join(cwd)

APP_MGR_DIR   = os.path.join(WAMR_APP_FRAMEWORK_ROOT_DIR, 'app-mgr')
APP_FRAMEWORK_DIR = os.path.join(WAMR_APP_FRAMEWORK_ROOT_DIR, 'app-framework')
SHARED_DIR = os.path.join(WAMR_APP_FRAMEWORK_ROOT_DIR, 'deps', 'wasm-micro-runtime', 'core', 'shared')

if GetDepend(['WAMR_BUILD_APP_FRAMEWORK']):
    objs += SConscript(os.path.join(APP_FRAMEWORK_DIR, 'SConscript'))
    objs += SConscript(os.path.join(SHARED_DIR, 'coap', 'SConscript'))
    objs += SConscript(os.path.join(APP_MGR_DIR, 'app-manager', 'SConscript'))
    objs += SConscript(os.path.join(APP_MGR_DIR, 'app-mgr-shared', 'SConscript'))
