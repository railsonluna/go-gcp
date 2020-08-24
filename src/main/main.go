package main

import (
	"fmt"
)

func main() {
	fmt.Printf("%v", Soma(5, 5))
}

func Soma(valueA int, valueB int) int {
    return valueA + valueB
}
