IDF_PATH ?= /root/.espressif/components
ESP_COMPONENTS = soc hal log esp_common esp_hw_support

all: build

build:
	make -C main build ARCH=esp32c3

build-lib:
	@$(foreach item, $(ESP_COMPONENTS), make -C esp32c3/components/$(item) build-lib ARCH=esp32c3 IDF_PATH=$(IDF_PATH);)
