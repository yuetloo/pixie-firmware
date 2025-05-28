LIB = libesp_hw_support.a
LIBDIR = esp_hw_support
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/cpu.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/esp_cpu_intr.c \
           $(IDF_PATH)/$(LIBDIR)/esp_memory_utils.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/rtc_clk.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/rtc_clk_init.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/cpu_region_protect.c

EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/include \
                -I$(IDF_PATH)/$(LIBDIR)/include/soc \
                -I$(IDF_PATH)/$(LIBDIR)/include/soc/$(ARCH) \
                -I$(IDF_PATH)/$(LIBDIR)/include/esp_private \
                -I$(IDF_PATH)/$(LIBDIR)/dma/include \
                -I$(IDF_PATH)/hal/esp32c3/include \
                -I$(IDF_PATH)/riscv/include \
                -I$(IDF_PATH)/dma/include \
                -I$(IDF_PATH)/ldo/include

include ../../../$(ARCH)/build.mk
