LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE		:= libpthread_workqueue
LOCAL_C_INCLUDES	:= $(LOCAL_PATH)/android \
					   $(LOCAL_PATH)/include \
					   $(LOCAL_PATH)/src
LOCAL_CFLAGS		:= -D_XOPEN_SOURCE=600 -D__EXTENSIONS__ -D_GNU_SOURCE -std=c99 -fvisibility=hidden
LOCAL_SRC_FILES		:=  \
	src/api.c \
	src/witem_cache.c \
	src/posix/manager.c \
	src/posix/thread_info.c \
	src/posix/thread_rt.c \
	src/linux/load.c \
	src/linux/thread_info.c \
	src/linux/thread_rt.c 

include $(BUILD_STATIC_LIBRARY)

