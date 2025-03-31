LIB = libsoc.a
IDF_PATH ?= /root/.espressif/components
LIB_SRCS = $(IDF_PATH)/soc/lldesc.c \
           $(IDF_PATH)/soc/dport_access_common.c \
           $(IDF_PATH)/soc/$(ARCH)/interrupts.c \
           $(IDF_PATH)/soc/$(ARCH)/gpio_periph.c \
           $(IDF_PATH)/soc/$(ARCH)/uart_periph.c

EXTRA_CFLAGS= -I$(IDF_PATH)/soc/include \
           -I$(IDF_PATH)/soc/$(ARCH)/include \
           -I$(IDF_PATH)/esp_rom/include \
           -I$(IDF_PATH)/esp_common/include

include ../../../$(ARCH)/build.mk
