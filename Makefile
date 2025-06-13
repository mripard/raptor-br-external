.PHONY: image

buildroot/.git:
	@git submodule init
	@git submodule update

buildroot: buildroot/.git
	@(cd buildroot; \
		git am -s ../patches/*.patch \
	)

output/.config: buildroot
	make -C buildroot BR2_EXTERNAL=../raptor O=$(shell pwd)/output raptor_defconfig

image: buildroot output/.config
	make -C buildroot O=$(shell pwd)/output

all: image
	@:

clean:
	rm -rf output
