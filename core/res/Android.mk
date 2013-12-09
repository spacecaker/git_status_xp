#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_NO_STANDARD_LIBRARIES := true
LOCAL_PACKAGE_NAME := framework-res
LOCAL_CERTIFICATE := platform

# Tell aapt to create "extending (non-application)" resource IDs,
# since these resources will be used by many apps.
LOCAL_AAPT_FLAGS := -x

LOCAL_MODULE_TAGS := optional

# Install this alongside the libraries.
LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)

# Create package-export.apk, which other packages can use to get
# PRODUCT-agnostic resource data like IDs and type definitions.
LOCAL_EXPORT_PACKAGE_RESOURCES := true

# Include resources generated by system RenderScript files.
framework_GENERATED_SOURCE_DIR := $(call intermediates-dir-for,JAVA_LIBRARIES,framework,,COMMON)/src
framework_RenderScript_STAMP_FILE := $(framework_GENERATED_SOURCE_DIR)/RenderScript.stamp
#LOCAL_RESOURCE_DIR := $(framework_GENERATED_SOURCE_DIR)/renderscript/res $(LOCAL_PATH)/res

include $(BUILD_PACKAGE)

# Make sure the system .rs files get compiled before building the package-export.apk.
# $(resource_export_package): $(framework_RenderScript_STAMP_FILE)

# define a global intermediate target that other module may depend on.
.PHONY: framework-res-package-target
framework-res-package-target: $(LOCAL_BUILT_MODULE)
