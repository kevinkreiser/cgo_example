run: build
	LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:thirdparty ./build
build: thirdparty/foo_c.h thirdparty/libfoo_c.so
	go build -o build
thirdparty/foo_c.h: thirdparty
thirdparty/libfoo_c.so: thirdparty
thirdparty: build_thirdparty.sh
	build_thirdparty.sh
.PHONY: thirdparty
