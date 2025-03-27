LIB = soc
IDF_PATH ?= /root/.espressif/components
LIB_SRCS = $(IDF_PATH)/$(LIB)/lldesc.c \
           $(IDF_PATH)/$(LIB)/dport_access_common.c \
           $(IDF_PATH)/$(LIB)/$(ARCH)/interrupts.c \
           $(IDF_PATH)/$(LIB)/$(ARCH)/gpio_periph.c \
           $(IDF_PATH)/$(LIB)/$(ARCH)/uart_periph.c

EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIB)/include \
           -I$(IDF_PATH)/$(LIB)/$(ARCH)/include \
           -I$(IDF_PATH)/esp_rom/include \
           -I$(IDF_PATH)/esp_common/include

include ../../../$(ARCH)/build.mk
