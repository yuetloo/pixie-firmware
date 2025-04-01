LIB = libriscv.a
LIBDIR ?= riscv
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/instruction_decode.c \
           $(IDF_PATH)/$(LIBDIR)/interrupt.c \
           $(IDF_PATH)/$(LIBDIR)/interrupt_intc.c \
           $(IDF_PATH)/$(LIBDIR)/vectors_intc.S

EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/include \
              -I$(IDF_PATH)/hal/include

include ../../../$(ARCH)/build.mk
