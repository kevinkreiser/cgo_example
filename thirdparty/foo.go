package thirdparty

// #cgo CFLAGS: -I. -O3 -g0 -std=c11
// #cgo LDFLAGS: -L/opt/homebrew/lib thirdparty/libfoo_c.a thirdparty/libfoo.a -llz4 -lstdc++
// #include "foo_c.h"
import "C"

func Foo() string {
    return C.GoString(C.foo_bar())
}