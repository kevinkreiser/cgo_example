package thirdparty

// #cgo CFLAGS: -I. -O3 -g0 -std=c11
// #cgo LDFLAGS: -L. -lfoo_c -lfoo_c
// #include "foo_c.h"
import "C"

func Foo() int {
    return int(C.foo_bar())
}