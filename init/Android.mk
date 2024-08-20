LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += system/core/init $(LOCAL_PATH)
LOCAL_CFLAGS := -Wall
LOCAL_SRC_FILES := init_a2corelte.cpp
LOCAL_MODULE := libinit_a2corelte
include $(BUILD_STATIC_LIBRARY)
