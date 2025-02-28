PROG        ?= firmware
ARCH        ?= esp32c3
MDK         ?= $(realpath $(dir $(lastword $(MAKEFILE_LIST)))/..)
ESPUTIL     ?= $(MDK)/esputil/esputil
CFLAGS      ?= -W -Wall -Wextra -Werror -Wundef -Wshadow -pedantic \
               -Wdouble-promotion -fno-common -Wconversion \
               -march=rv32imc -mabi=ilp32 \
               -Os -ffunction-sections -fdata-sections \
               -I. -I$(MDK)/$(ARCH) \
               -I/root/.espressif/components/esp_hw_support/include \
               -I/root/.espressif/components/esp_driver_gpio/include \
               -I/root/.espressif/components/freertos/FreeRTOS-Kernel/include \
               -I/root/.espressif/components/log/include \
               -I$(MDK)/components/crypto/crypto \
               -I$(MDK)/components/firefly-display/include \
               -I$(MDK)/components/firefly-scene/include \
               $(EXTRA_CFLAGS)
LINKFLAGS   ?= -T$(MDK)/$(ARCH)/link.ld -nostdlib -nostartfiles -Wl,--gc-sections $(EXTRA_LINKFLAGS)
CWD         ?= $(realpath $(CURDIR))
FLASH_ADDR  ?= 0  # 2nd stage bootloader flash offset
SRCS        ?= $(MDK)/$(ARCH)/boot.c $(SOURCES)

build: $(PROG).bin

$(PROG).elf: $(SRCS)
	gcc  $(CFLAGS) $(SRCS) $(LINKFLAGS) -o $@
#	$(TOOLCHAIN)-size $@

$(PROG).bin: $(PROG).elf $(ESPUTIL)
	$(ESPUTIL) mkbin $(PROG).elf $@

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
