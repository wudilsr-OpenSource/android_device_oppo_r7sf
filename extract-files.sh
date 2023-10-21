#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export BITS=64
export DEVICE=r7sf
export DEVICE_COMMON=msm8939-common
export VENDOR_DEVICE=oppo
export VENDOR_COMMON=oppo

"./../../${VENDOR_COMMON}/${DEVICE_COMMON}/extract-files.sh" "$@"
