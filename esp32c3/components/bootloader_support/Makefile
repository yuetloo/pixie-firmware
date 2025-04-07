LIB = libbootloader_support.a
LIBDIR = bootloader_support
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/src/bootloader_common.c \
           $(IDF_PATH)/$(LIBDIR)/src/bootloader_common_loader.c \
           $(IDF_PATH)/$(LIBDIR)/src/bootloader_clock_init.c \
           $(IDF_PATH)/$(LIBDIR)/src/bootloader_mem.c \
           $(IDF_PATH)/$(LIBDIR)/src/bootloader_random.c \
           $(IDF_PATH)/$(LIBDIR)/src/bootloader_efuse.c \
           $(IDF_PATH)/$(LIBDIR)/src/flash_encrypt.c \
           $(IDF_PATH)/$(LIBDIR)/src/secure_boot.c \
           $(IDF_PATH)/$(LIBDIR)/src/bootloader_utility.c \
           $(IDF_PATH)/$(LIBDIR)/src/$(ARCH)/bootloader_$(ARCH).c \
           $(IDF_PATH)/$(LIBDIR)/bootloader_flash/src/bootloader_flash.c \
           $(IDF_PATH)/$(LIBDIR)/bootloader_flash/src/flash_qio_mode.c \
           $(IDF_PATH)/$(LIBDIR)/bootloader_flash/src/bootloader_flash_config_$(ARCH).c \
           $(IDF_PATH)/$(LIBDIR)/src/idf/bootloader_sha.c

EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/include \
              -I$(IDF_PATH)/$(LIBDIR)/bootloader_flash/include \
              -I$(IDF_PATH)/$(LIBDIR)/private_include \
              -I$(IDF_PATH)/efuse/include \
              -I$(IDF_PATH)/efuse/$(ARCH)/include \
              -I$(IDF_PATH)/mbedtls/mbedtls/include \
              -I$(IDF_PATH)/esp_app_format/include

include ../../../$(ARCH)/build.mk
