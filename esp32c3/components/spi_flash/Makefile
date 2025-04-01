IB = libspi_flash.a
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_drivers.c \
           $(IDF_PATH)/$(LIBDIR)/flash_brownout_hook.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_generic.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_issi.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_mxic.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_gd.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_winbond.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_boya.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_mxic_opi.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_chip_th.c \
           $(IDF_PATH)/$(LIBDIR)/memspi_host_driver.c \
           $(IDF_PATH)/$(LIBDIR)/cache_utils.c \
           $(IDF_PATH)/$(LIBDIR)/flash_mmap.c \
           $(IDF_PATH)/$(LIBDIR)/flash_ops.c  \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_wrap.c \
           $(IDF_PATH)/$(LIBDIR)/esp_flash_api.c \
           $(IDF_PATH)/$(LIBDIR)/esp_flash_spi_init.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_os_func_app.c \
           $(IDF_PATH)/$(LIBDIR)/spi_flash_os_func_noos.c

EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/include \
              -I$(IDF_PATH)/$(LIBDIR)/include/spi_flash \
              -I$(IDF_PATH)/$(LIBDIR)/sim/stubs/soc/include \
              -I$(IDF_PATH)/bootloader_support/include \
              -I$(IDF_PATH)/bootloader_support/bootloader_flash/include \
              -I$(IDF_PATH)/esp_rom/include \
              -I$(IDF_PATH)/esp_rom/esp32c3 \
              -I$(IDF_PATH)/esp_rom/include/$(ARCH) \
              -I$(IDF_PATH)/esp_system/include \
              -I$(IDF_PATH)/esp_hw_support/include \
              -I$(IDF_PATH)/esp_hw_support/ldo/include \
              -I$(IDF_PATH)/newlib/platform_include \
              -I$(IDF_PATH)/hal/$(ARCH)/include \
              -I$(IDF_PATH)/hal/platform_port/include \
              -I$(IDF_PATH)/hal/include \
              -I$(IDF_PATH)/esp_driver_gpio/include \
              -I$(IDF_PATH)/heap/include \
              -I$(IDF_PATH)/riscv/include \
              -I$(IDF_PATH)/esp_mm/include \
              -I$(IDF_PATH)/freertos/FreeRTOS-Kernel/portable/riscv/include/freertos \
              -I$(IDF_PATH)/freertos/config/include \
              -I$(IDF_PATH)/freertos/config/riscv/include \
              -I$(IDF_PATH)/freertos/FreeRTOS-Kernel/include \
              -I$(IDF_PATH)/freertos/config/include/freertos

include ../../../$(ARCH)/build.mk


