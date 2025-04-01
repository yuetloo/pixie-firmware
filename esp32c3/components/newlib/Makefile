LIB = libnewlib.a
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/abort.c \
           $(IDF_PATH)/$(LIBDIR)/assert.c \
           $(IDF_PATH)/$(LIBDIR)/heap.c \
           $(IDF_PATH)/$(LIBDIR)/locks.c \
           $(IDF_PATH)/$(LIBDIR)/poll.c \
           $(IDF_PATH)/$(LIBDIR)/pthread.c \
           $(IDF_PATH)/$(LIBDIR)/random.c \
           $(IDF_PATH)/$(LIBDIR)/getentropy.c \
           $(IDF_PATH)/$(LIBDIR)/newlib_init.c \
           $(IDF_PATH)/$(LIBDIR)/syscalls.c \
           $(IDF_PATH)/$(LIBDIR)/termios.c \
           $(IDF_PATH)/$(LIBDIR)/stdatomic.c \
           $(IDF_PATH)/$(LIBDIR)/time.c \
           $(IDF_PATH)/$(LIBDIR)/sysconf.c \
           $(IDF_PATH)/$(LIBDIR)/realpath.c \
           $(IDF_PATH)/$(LIBDIR)/scandir.c

EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/platform_include \
              -I$(IDF_PATH)/$(LIBDIR)/priv_include  \
              -I$(IDF_PATH)/esp_hw_support/include \
              -I$(IDF_PATH)/esp_hw_support/port/$(ARCH)/include \
              -I$(IDF_PATH)/esp_rom/$(ARCH) \
              -I$(IDF_PATH)/hal/$(ARCH)/include \
              -I$(IDF_PATH)/hal/platform_port/include \
              -I$(IDF_PATH)/hal/include \
              -I$(IDF_PATH)/heap/include \
              -I$(IDF_PATH)/log/include \
              -I$(IDF_PATH)/newlib/platform_include \
              -I$(IDF_PATH)/riscv/include \
              -I$(IDF_PATH)/spi_flash/include \
              -I$(IDF_PATH)/esp_rom/include \
              -I$(IDF_PATH)/freertos/FreeRTOS-Kernel/portable/riscv/include/freertos \
              -I$(IDF_PATH)/freertos/config/include \
              -I$(IDF_PATH)/freertos/config/riscv/include \
              -I$(IDF_PATH)/freertos/FreeRTOS-Kernel/include \
              -I$(IDF_PATH)/freertos/config/include/freertos \
              -I$(IDF_PATH)/esp_system/include

include ../../../$(ARCH)/build.mk
