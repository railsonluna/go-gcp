package soma

import (
	"fmt"
)

func main() {
	fmt.Printf("%v", soma(5, 5))
}

func soma(valueA int, valueB int) int {
    return valueA + valueB
}
