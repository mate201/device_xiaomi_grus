#
# Copyright (C) 2019 The XenonHD Project
#
# SPDX-License-Identifier: Apache-2.0
#

#
# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),grus)

include $(CLEAR_VARS)
LOCAL_MODULE := com.google.android.gms
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := microg/com.google.android.gms.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif


