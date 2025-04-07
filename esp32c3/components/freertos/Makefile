LIB = libfreertos.a
LIBDIR = freertos
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/app_startup.c \
           $(IDF_PATH)/$(LIBDIR)/heap_idf.c \
           $(IDF_PATH)/$(LIBDIR)/port_common.c \
           $(IDF_PATH)/$(LIBDIR)/port_systick.c


EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/config/include \
              -I$(IDF_PATH)/$(LIBDIR)/config/include/freertos \
              -I$(IDF_PATH)/$(LIBDIR)/config/riscv/include \
              -I$(IDF_PATH)/$(LIBDIR)/FreeRTOS-Kernel/include/freertos \
              -I$(IDF_PATH)/$(LIBDIR)/FreeRTOS-Kernel/include \
              -I$(IDF_PATH)/$(LIBDIR)/FreeRTOS-Kernel/portable\riscv\include \
              -I$(IDF_PATH)/$(LIBDIR)/FreeRTOS-Kernel/portable\riscv\include\freertos \
              -I$(IDF_PATH)/$(LIBDIR)/esp_additions/include \
              -I$(IDF_PATH)/$(LIBDIR) \

include ../../../$(ARCH)/build.mk
