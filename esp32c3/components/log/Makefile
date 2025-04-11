LIB = liblog.a
LIB_SRCS = $(IDF_PATH)/log/log.c \
           $(IDF_PATH)/log/log_buffers.c \
           $(IDF_PATH)/log/log_freertos.c

EXTRA_CFLAGS= -I$(IDF_PATH)/log/include \
                -I$(IDF_PATH)/esp_rom/include \
                -I$(IDF_PATH)/esp_hw_support/include \
                -I$(IDF_PATH)/soc/esp32c3/include

include ../../../$(ARCH)/build.mk
