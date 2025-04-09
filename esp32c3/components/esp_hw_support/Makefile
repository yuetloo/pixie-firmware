LIB = libesp_hw_support.a
LIBDIR = esp_hw_support
LIB_SRCS = $(IDF_PATH)/$(LIBDIR)/cpu.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/esp_cpu_intr.c \
           $(IDF_PATH)/$(LIBDIR)/esp_memory_utils.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/cpu_region_protect.c \
           $(IDF_PATH)/$(LIBDIR)/esp_clk.c \
           $(IDF_PATH)/$(LIBDIR)/clk_ctrl_os.c \
           $(IDF_PATH)/$(LIBDIR)/hw_random.c \
           $(IDF_PATH)/$(LIBDIR)/intr_alloc.c \
           $(IDF_PATH)/$(LIBDIR)/mac_addr.c \
           $(IDF_PATH)/$(LIBDIR)/periph_ctrl.c \
           $(IDF_PATH)/$(LIBDIR)/revision.c \
           $(IDF_PATH)/$(LIBDIR)/rtc_module.c \
           $(IDF_PATH)/$(LIBDIR)/sleep_modes.c \
           $(IDF_PATH)/$(LIBDIR)/sleep_console.c \
           $(IDF_PATH)/$(LIBDIR)/sleep_gpio.c \
           $(IDF_PATH)/$(LIBDIR)/sleep_event.c \
           $(IDF_PATH)/$(LIBDIR)/sleep_modem.c \
           $(IDF_PATH)/$(LIBDIR)/regi2c_ctrl.c \
           $(IDF_PATH)/$(LIBDIR)/esp_gpio_reserve.c \
           $(IDF_PATH)/$(LIBDIR)/sar_periph_ctrl_common.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/io_mux.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/esp_clk_tree.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp_clk_tree_common.c \
           $(IDF_PATH)/$(LIBDIR)/dma/esp_dma_utils.c \
           $(IDF_PATH)/$(LIBDIR)/adc_share_hw_ctrl.c \
           $(IDF_PATH)/$(LIBDIR)/lowpower/cpu_retention/port/esp32c3/sleep_cpu.c \
           $(IDF_PATH)/$(LIBDIR)/dma/gdma.c \
           $(IDF_PATH)/$(LIBDIR)/dma/esp_async_memcpy.c \
           $(IDF_PATH)/$(LIBDIR)/dma/async_memcpy_gdma.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/systimer.c \
           $(IDF_PATH)/$(LIBDIR)/esp_hmac.c \
           $(IDF_PATH)/$(LIBDIR)/esp_ds.c \
           $(IDF_PATH)/$(LIBDIR)/mspi_timing_tuning.c \
           $(IDF_PATH)/$(LIBDIR)/sleep_wake_stub.c \
           $(IDF_PATH)/$(LIBDIR)/esp_clock_output.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/rtc_clk_init.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/rtc_clk.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/rtc_init.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/rtc_sleep.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/rtc_time.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/chip_info.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/esp_crypto_lock.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/sar_periph_ctrl.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/adc2_init_cal.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp32c3/esp_memprot.c \
           $(IDF_PATH)/$(LIBDIR)/port/esp_memprot_conv.c


EXTRA_CFLAGS= -I$(IDF_PATH)/$(LIBDIR)/include \
                -I$(IDF_PATH)/$(LIBDIR)/include/soc \
                -I$(IDF_PATH)/$(LIBDIR)/include/soc/$(ARCH) \
                -I$(IDF_PATH)/$(LIBDIR)/include/esp_private \
                -I$(IDF_PATH)/hal/esp32c3/include \
                -I$(IDF_PATH)/riscv/include \
                -I$(IDF_PATH)/dma/include \
                -I$(IDF_PATH)/ldo/include

include ../../../$(ARCH)/build.mk
