LIB = libhal.a
LIB_SRCS = $(IDF_PATH)/hal/hal_utils.c \
           $(IDF_PATH)/hal/efuse_hal.c \
           $(IDF_PATH)/hal/$(ARCH)/efuse_hal.c

EXTRA_CFLAGS= -I$(IDF_PATH)/hal/platform_port/include \
           -I$(IDF_PATH)/hal/$(ARCH)/include \
           -I$(IDF_PATH)/hal/include \
           -I$(IDF_PATH)/esp_common/include

include ../../../$(ARCH)/build.mk
