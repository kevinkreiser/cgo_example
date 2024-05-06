// basic main file in go
package main

import (
    "fmt"
    "github.com/kevinkreiser/cgo_example/thirdparty"
)

func main() {
    fmt.Println(thirdparty.Foo())
}