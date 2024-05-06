package thirdparty

// #cgo CFLAGS: -I. -O3 -g0 -std=c11
// #cgo LDFLAGS: thirdparty/libfoo_c.a thirdparty/libfoo.a
// #include "foo_c.h"
import "C"

func Foo() int {
    return int(C.foo_bar())
}