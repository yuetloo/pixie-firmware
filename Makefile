all: build

build:
	make -C main build ARCH=esp32c3
