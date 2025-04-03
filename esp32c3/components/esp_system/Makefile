LIB = libesp_system.a
LIBDIR ?= esp_system
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/crosscore_int.c \
           $(IDF_PATH)/$(LIBDIR)/esp_ipc.c \
           $(IDF_PATH)/$(LIBDIR)/esp_err.c \
           $(IDF_PATH)/$(LIBDIR)/freertos_hooks.c \
           $(IDF_PATH)/$(LIBDIR)/int_wdt.c \
           $(IDF_PATH)/$(LIBDIR)/panic.c \
           $(IDF_PATH)/$(LIBDIR)/esp_system.c \
           $(IDF_PATH)/$(LIBDIR)/startup.c \
           $(IDF_PATH)/$(LIBDIR)/startup_funcs.c \
           $(IDF_PATH)/$(LIBDIR)/system_time.c \
           $(IDF_PATH)/$(LIBDIR)/stack_check.c \
           $(IDF_PATH)/$(LIBDIR)/ubsan.c \
           $(IDF_PATH)/$(LIBDIR)/xt_wdt.c

EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/include \
              -I$(IDF_PATH)/$(LIBDIR)/include/esp_p
rivate

include ../../../$(ARCH)/build.mk
