PROG        ?= firmware
ARCH        ?= esp32c3
MDK         ?= $(realpath $(dir $(lastword $(MAKEFILE_LIST)))/..)
ESPUTIL     ?= $(MDK)/esputil/esputil
LIB_CFLAGS  ?= -W \
               -I$(MDK) \
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
CFLAGS      ?= -W \
               -Wno-sign-compare \
               -fno-common \
               -march=rv32imc -mabi=ilp32 \
               -Os -ffunction-sections -fdata-sections \
               -I. -I$(MDK)/$(ARCH) \
               -I$(MDK) \
               -I/root/.espressif/components/bt/common/include \
               -I/root/.espressif/components/bt/host/nimble/nimble/nimble/include \
               -I/root/.espressif/components/bt/host/nimble/nimble/nimble/host/include \
               -I/root/.espressif/components/bt/host/nimble/nimble/nimble/host/services/gap/include \
               -I/root/.espressif/components/bt/host/nimble/nimble/nimble/host/services/gatt/include \
               -I/root/.espressif/components/bt/host/nimble/nimble/nimble/host/util/include \
               -I/root/.espressif/components/bt/host/nimble/nimble/nimble/transport/include \
               -I/root/.espressif/components/bt/host/nimble/nimble/porting/nimble/include \
               -I/root/.espressif/components/bt/host/nimble/port/include \
               -I/root/.espressif/components/bt/porting/npl/freertos/include \
               -I/root/.espressif/components/efuse/esp32c3/include \
               -I/root/.espressif/components/efuse/include \
               -I/root/.espressif/components/esp_common/include \
               -I/root/.espressif/components/esp_driver_gpio/include \
               -I/root/.espressif/components/esp_driver_rmt/include \
               -I/root/.espressif/components/esp_driver_spi/include \
               -I/root/.espressif/components/esp_hw_support/include \
               -I/root/.espressif/components/esp_hw_support/include/soc/esp32c3 \
               -I/root/.espressif/components/esp_hw_support/port/esp32c3/include \
               -I/root/.espressif/components/esp_hw_support/port/include \
               -I/root/.espressif/components/esp_partition/include \
               -I/root/.espressif/components/esp_rom/esp32c3 \
               -I/root/.espressif/components/esp_rom/include \
               -I/root/.espressif/components/esp_system/include \
               -I/root/.espressif/components/esp_system/port/include \
               -I/root/.espressif/components/esp_system/port/include/riscv \
               -I/root/.espressif/components/esp_timer/include \
               -I/root/.espressif/components/freertos/FreeRTOS-Kernel/portable/riscv/include \
               -I/root/.espressif/components/freertos/FreeRTOS-Kernel/portable/riscv/include/freertos \
               -I/root/.espressif/components/freertos/FreeRTOS-Kernel/include/freertos \
               -I/root/.espressif/components/freertos/FreeRTOS-Kernel/include \
               -I/root/.espressif/components/freertos/config/include \
               -I/root/.espressif/components/freertos/config/include/freertos \
               -I/root/.espressif/components/freertos/config/riscv/include \
               -I/root/.espressif/components/freertos/esp_additions/include \
               -I/root/.espressif/components/freertos/esp_additions \
               -I/root/.espressif/components/hal/esp32c3/include \
               -I/root/.espressif/components/hal/include \
               -I/root/.espressif/components/hal/platform_port/include \
               -I/root/.espressif/components/heap/include \
               -I/root/.espressif/components/log/include \
               -I/root/.espressif/components/newlib/platform_include \
               -I/root/.espressif/components/nvs_flash/include \
               -I/root/.espressif/components/riscv/include \
               -I/root/.espressif/components/soc/esp32c3/include \
               -I/root/.espressif/components/soc/include \
               -I/root/.espressif/riscv32-esp-elf/lib/gcc/riscv32-esp-elf/13.2.0/include \
               -I/root/.espressif/riscv32-esp-elf/riscv32-esp-elf/include \
               -I$(MDK)/components/crypto \
               -I$(MDK)/components/firefly-display/include \
               -I$(MDK)/components/firefly-scene/include \
               $(EXTRA_CFLAGS)
LINKFLAGS   ?= -T$(MDK)/$(ARCH)/components/esp_system/ld/memory.ld \
               -T$(MDK)/$(ARCH)/components/esp_system/ld/sections.ld \
               -T$(MDK)/$(ARCH)/link.ld -nostdlib -nostartfiles -Wl,--gc-sections $(EXTRA_LINKFLAGS)
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
SRCS        ?= $(MDK)/$(ARCH)/boot.c $(PIXIE_SRCS) $(SOURCES)

build: $(PROG).elf

$(PROG).elf: $(SRCS)
	gcc  $(CFLAGS) $(SRCS) $(LINKFLAGS) -o $@
#	$(TOOLCHAIN)-size $@

$(PROG).bin: $(PROG).elf $(ESPUTIL)
	$(ESPUTIL) mkbin $(PROG).elf $@

build-lib: $(LIB)

$(LIB): $(LIB_SRCS)
	gcc -W -march=rv32imc -mabi=ilp32 $(LIB_CFLAGS) $(EXTRA_CFLAGS) -c $(LIB_SRCS)
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
