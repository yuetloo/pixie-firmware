PROG        ?= firmware
ARCH        ?= esp32c3
MDK         ?= $(realpath $(dir $(lastword $(MAKEFILE_LIST)))/..)
ESPUTIL     ?= $(MDK)/esputil/esputil
include $(MDK)/$(ARCH)/esp.mk
INCLUDES    = $(ESP_INCLUDES)
LIB_CFLAGS  ?= -W -Wno-sign-compare -Wno-old-style-declaration \
               -I$(MDK) \
               -I/root/.espressif/components/esp_bootloader_format/include \
               -I/root/.espressif/components/esp_common/include \
               -I/root/.espressif/components/esp_system/include \
               -I/root/.espressif/components/esp_rom/$(ARCH) \
               -I/root/.espressif/components/esp_rom/include \
               -I/root/.espressif/components/esp_rom/include/$(ARCH) \
               -I/root/.espressif/components/soc/$(ARCH)/include \
               -I/root/.espressif/components/soc/include \
               -I/root/.espressif/components/esp_coex/include \
               -I/root/.espressif/components/log/include \
               -I/root/.espressif/components/newlib/platform_include \
               -I/root/.espressif/components/heap/include \
               -I/root/.espressif/components/hal/include \
               -I/root/.espressif/components/hal/$(ARCH)/include \
               -I/root/.espressif/components/hal/platform_port/include \
               -I/root/.espressif/components/riscv/include \
               -I/root/.espressif/components/spi_flash/include \
               -I/root/.espressif/components/esp_hw_support/include \
               -I/root/.espressif/components/esp_hw_support/port/$(ARCH)/include \
               -I/root/.espressif/components/esp_hw_support/include/soc \
               -I/root/.espressif/components/esp_hw_support/include/soc/$(ARCH) \
               -I/root/.espressif/components/freertos/config/include \
               -I/root/.espressif/components/freertos/FreeRTOS-Kernel/include \
               -I/root/.espressif/components/freertos/config/include/freertos\
               -I/root/.espressif/components/freertos/config/riscv/include \
               -I/root/.espressif/components/freertos/FreeRTOS-Kernel/portable/riscv/include/freertos \
               -I/root/.espressif/components/freertos/FreeRTOS-Kernel/portable/riscv/include \
               -I/root/.espressif/riscv32-esp-elf/riscv32-esp-elf/include
CFLAGS      ?= -W -Wno-sign-compare -fno-common \
               -march=rv32imczicsr -mabi=ilp32 -Os \
               -ffunction-sections -fdata-sections \
               -I. -I$(MDK)/$(ARCH) -I$(MDK) 
LINKFLAGS += -nostartfiles \
-Wl,--cref -Wl,--defsym=IDF_TARGET_ESP32C3=0 -Wl,--Map=$(MDK)/pixie.map \
-Wl,--no-warn-rwx-segments -Wl,--gc-sections -Wl,--warn-common -T esp32c3.rom.ld \
-T esp32c3.rom.api.ld -T esp32c3.rom.libgcc.ld -T esp32c3.rom.newlib.ld \
-T esp32c3.peripherals.ld -T bootloader.ld -T bootloader.rom.ld \
-L/root/.espressif/components/esp_rom/esp32c3/ld  \
-L/root/.espressif/components/soc/esp32c3/ld  \
-L/root/.espressif/components/bootloader/subproject/main/ld/esp32c3  \
/root/.espressif/riscv32-esp-elf/riscv32-esp-elf/lib/libc.a \
$(MDK)/$(ARCH)/components/newlib/libnewlib.a \
$(MDK)/$(ARCH)/components/soc/libsoc.a \
$(MDK)/$(ARCH)/components/hal/libhal.a \
$(MDK)/$(ARCH)/components/esp_rom/libesp_rom.a \
$(MDK)/$(ARCH)/components/soc/libsoc.a \
$(MDK)/$(ARCH)/components/esp_system/libesp_system.a \
$(MDK)/$(ARCH)/components/esp_common/libesp_common.a \
$(MDK)/$(ARCH)/components/log/liblog.a \
$(MDK)/$(ARCH)/components/esp_rom/libesp_rom.a \
$(MDK)/$(ARCH)/components/bootloader_support/libbootloader_support.a \
-u __assert_func -u esp_bootloader_desc -u abort -u __ubsan_include -u bootloader_hooks_include
CWD         ?= $(realpath $(CURDIR))
FLASH_ADDR  ?= 0  # 2nd stage bootloader flash offset
FFY_SCENE   ?= $(MDK)/components/firefly-scene
SCENE_SRCS  ?= $(FFY_SCENE)/src/color.c \
               $(FFY_SCENE)/src/curves.c \
               $(FFY_SCENE)/src/debug.c \
               $(FFY_SCENE)/src/fixed.c \
               $(FFY_SCENE)/src/node.c \
               $(FFY_SCENE)/src/node-box.c \
               $(FFY_SCENE)/src/node-fill.c \
               $(FFY_SCENE)/src/node-group.c \
               $(FFY_SCENE)/src/node-image.c \
               $(FFY_SCENE)/src/node-text.c \
               $(FFY_SCENE)/src/scene.c
DISPLAY_SRCS ?= $(MDK)/components/firefly-display/src/display.c
CRYPTO_SRCS  ?= $(MDK)/components/crypto/bip32.c \
                $(MDK)/components/crypto/keccak256.c \
                $(MDK)/components/crypto/ecc.c \
                $(MDK)/components/crypto/sha2.c
PIXIE_SRCS  ?= $(CRYPTO_SRCS) $(DISPLAY_SRCS) $(SCENE_SRCS)
SRCS        ?= /root/.espressif/components/bootloader/subproject/main/bootloader_start.c $(PIXIE_SRCS) $(SOURCES)

build: $(PROG).elf

$(PROG).elf: $(SRCS)
	gcc  $(CFLAGS) $(EXTRA_CFLAGS) $(INCLUDES) $(SRCS) $(LINKFLAGS) -o $@
#	$(TOOLCHAIN)-size $@

$(PROG).bin: $(PROG).elf $(ESPUTIL)
	$(ESPUTIL) mkbin $(PROG).elf $@

build-lib: $(LIB)

$(LIB): $(LIB_SRCS)
	gcc -Wno-old-style-declaration $(CFLAGS) $(INCLUDES) $(EXTRA_CFLAGS) -c $(LIB_SRCS)
	riscv32-esp-elf-ar rcs $@ *.o

flash: $(PROG).bin $(ESPUTIL)
	$(ESPUTIL) flash $(FLASH_ADDR) $(PROG).bin

monitor: $(ESPUTIL)
	$(ESPUTIL) monitor

$(MDK)/esputil/esputil.c:
	git submodule update --init --recursive

$(ESPUTIL): $(MDK)/esputil/esputil.c
	make -C $(MDK)/esputil esputil

clean:
	@rm -rf *.{bin,elf,map,lst,tgz,zip,hex} $(PROG)*
