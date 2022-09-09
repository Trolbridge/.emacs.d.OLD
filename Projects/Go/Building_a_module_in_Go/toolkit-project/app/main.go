package main

import (
	"github.com/trolbridge/toolkit"
	"fmt"
)

func main() {
	var tools toolkit.Tools

	s := tools.RandomString(10)
	fmt.Println("Random string:", s)
}