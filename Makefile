run: build
	./build
build: thirdparty/foo_c.h thirdparty/libfoo_c.so
	CGO_ENABLED=1 go build -o build
thirdparty/foo_c.h: thirdparty
thirdparty/libfoo_c.so: thirdparty
thirdparty: build_thirdparty.sh
	./build_thirdparty.sh
.PHONY: thirdparty
