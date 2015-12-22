LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= core.c \
                    descriptor.c \
                    io.c \
                    sync.c \
                    os/linux_usbfs.c	\
                    os/threads_posix.c
                    
LOCAL_C_INCLUDES += \
                    ./ \
                    ./os \
                    ../
                                        
LOCAL_MODULE:= libusb
include $(BUILD_SHARED_LIBRARY)