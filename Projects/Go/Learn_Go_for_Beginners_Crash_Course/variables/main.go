package main

import (
	"bufio"
	"fmt"
	"os"
)


func main() {
	// one way - declare, then assign (two steps)
	var firstNumber  = 2
	var secondNumber = 5
	var subtraction = 7
	var answer

	reader := bufio.NewReader(os.Stdin)

	// display a welcome/instructions
	fmt.Println("Guess the Number Game")
	fmt.Println("---------------------")
	fmt.Println("")

	fmt.Println("Think of a number between 1 and 10, press ENTER when ready")
	reader.ReadString('\n')


	// take them through the games

	// give them the answer

	
}