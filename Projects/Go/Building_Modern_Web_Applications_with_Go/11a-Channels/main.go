package main

import (
	"fmt"
	"github.com/trolbridge/.emacs.d/Projects/Go/Building_Modern_Web_Applications_with_Go/10a-Packages/helpers"
	"log"
)

const numPool = 10

func CalculateValue(intChan chan int) {
	randomNumber := helpers.RandomNumber(numPool)
	randomNumber++
	intChan <- randomNumber
}
func main() {
	// Channels very similar to the way we create maps
	// Step 1: create the channel
	intChan := make(chan int)

	// Always close channel
	defer close(intChan)

	log.Println()
	for i := 0; i <= 10; i++ {
		go CalculateValue(intChan)
		num := <-intChan
		fmt.Printf("%d ", num)
	}
	fmt.Printf("\n")
	log.Println()
}
