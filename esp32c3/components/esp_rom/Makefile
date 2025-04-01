LIB = libesp_rom.a
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/patches/esp_rom_sys.c \
           $(IDF_PATH)/$(LIBDIR)/patches/esp_rom_crc.c \
           $(IDF_PATH)/$(LIBDIR)/patches/esp_rom_uart.c \
           $(IDF_PATH)/$(LIBDIR)/patches/esp_rom_spiflash.c \
           $(IDF_PATH)/$(LIBDIR)/patches/esp_rom_efuse.c

EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/include \
              -I$(IDF_PATH)/$(LIBDIR)/$(ARCH)/include \
              -I$(IDF_PATH)/$(LIBDIR)/$(ARCH)/include/$(ARCH) \
              -I$(IDF_PATH)/$(LIBDIR)/$(ARCH) \
              -I$(IDF_PATH)/hal/$(ARCH)/include \
              -I$(IDF_PATH)/hal/platform_port/include \
              -I$(IDF_PATH)/hal/include \
              -I$(IDF_PATH)/esp_rom/include/$(ARCH)

include ../../../$(ARCH)/build.mk
