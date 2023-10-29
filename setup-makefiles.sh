#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=r7sf
export DEVICE_COMMON=msm8939-common
export VENDOR=oppo

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
