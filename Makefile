all: build

build:
	make -C main build ARCH=esp32c3

build-lib:
	make -C esp32c3/components/soc build-lib ARCH=esp32c3
