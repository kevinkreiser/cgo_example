UNAME_S := $(shell uname -s)
run: build
ifeq ($(UNAME_S),Darwin)
  otool -L ./build
	DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:thirdparty ./build
else
	LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:thirdparty ./build
endif

build: thirdparty/foo_c.h thirdparty/libfoo_c.so
	go build -o build
thirdparty/foo_c.h: thirdparty
thirdparty/libfoo_c.so: thirdparty
thirdparty: build_thirdparty.sh
	./build_thirdparty.sh
.PHONY: thirdparty
