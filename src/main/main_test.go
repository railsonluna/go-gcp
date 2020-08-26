package main

import "testing"

func TestSoma(t *testing.T) {
	result := soma(5, 5)

	if result != 10 {
		t.Errorf("Soma esperada: %d, obtida: %d", 10, result)
	}
}
