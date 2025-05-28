LIB = libhal.a
LIB_SRCS = $(IDF_PATH)/hal/hal_utils.c \
           $(IDF_PATH)/hal/efuse_hal.c \
           $(IDF_PATH)/hal/cache_hal.c \
           $(IDF_PATH)/hal/mmu_hal.c \
           $(IDF_PATH)/hal/wdt_hal_iram.c \
           $(IDF_PATH)/hal/$(ARCH)/efuse_hal.c

EXTRA_CFLAGS= -I$(IDF_PATH)/hal/platform_port/include \
           -I$(IDF_PATH)/hal/$(ARCH)/include \
           -I$(IDF_PATH)/hal/include \
           -I$(IDF_PATH)/esp_common/include \
           -I$(IDF_PATH)/esp_rom/include/$(ARCH) \
           -I$(IDF_PATH)/soc/include \
           -I$(IDF_PATH)/soc/$(ARCH)/include

include ../../../$(ARCH)/build.mk
