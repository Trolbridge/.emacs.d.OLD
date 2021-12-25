package main

import (
	"fmt"
	"os"
)

func main() {
	os.Chdir("~/.emacs.d")
	newDir, err := os.Getwd()
	if err != nil {
	}
	fmt.Printf("Current Working Direcotry: %s\n", newDir)
}
