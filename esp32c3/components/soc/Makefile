LIB = soc
IDF_LIB_PATH ?= /root/.espressif/components/$(LIB)
LIB_SRCS = $(IDF_LIB_PATH)/lldesc.c \
           $(IDF_LIB_PATH)/dport_access_common.c \
           $(IDF_LIB_PATH)/$(ARCH)/interrupts.c \
           $(IDF_LIB_PATH)/$(ARCH)/gpio_periph.c \
           $(IDF_LIB_PATH)/$(ARCH)/uart_periph.c

EXTRA_FLAGS = $(IDF_LIB_PATH)/include \
           $(IDF_LIB_PATH)/$(ARCH)/include

include ../../../$(ARCH)/build.mk
