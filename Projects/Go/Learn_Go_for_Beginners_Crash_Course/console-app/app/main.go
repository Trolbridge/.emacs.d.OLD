package main

import (
	"fmt"
	"github.com/eiannone/keyboard"
	"log"
)

func main() {

	err := keyboard.Open()
	if err != nil {
		log.Fatal(err)
	}

	defer func() {
		_ = keyboard.Close()
	}()

	fmt.Println("Press any key. ESC to quit")
	for {
		char, key, err := keyboard.GetSingleKey()
		if err != nil {
			log.Fatal(err)
		}

		if key != 0 {
			fmt.Println("You pressed", char, key)
		} else {
			fmt.Println("You pressed", char)
		}

		if key == keyboard.KeyEsc {
			break
		}

	}

	fmt.Println("Program Exiting ...")

}
