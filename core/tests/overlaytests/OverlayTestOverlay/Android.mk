LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_SDK_VERSION := current

LOCAL_PACKAGE_NAME := com.android.overlaytest.overlay

LOCAL_AAPT_FLAGS := -o

include $(BUILD_PACKAGE)
