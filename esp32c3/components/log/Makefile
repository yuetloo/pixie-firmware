LIB = liblog.a
LIB_SRCS = $(IDF_PATH)/log/src/os/log_timestamp.c \
           $(IDF_PATH)/log/src/log_timestamp_common.c \
           $(IDF_PATH)/log/src/os/log_write.c \
           $(IDF_PATH)/log/src/buffer/log_buffers.c \
           $(IDF_PATH)/log/src/util.c \
           $(IDF_PATH)/log/src/os/log_lock.c


EXTRA_CFLAGS= -I$(IDF_PATH)/log/include \
                -I$(IDF_PATH)/esp_rom/include \
                -I$(IDF_PATH)/esp_hw_support/include \
                -I$(IDF_PATH)/soc/esp32c3/include

include ../../../$(ARCH)/build.mk
