package main

import "fmt"

func main() {
	// one way - declare, then assign (two steps)
	var firstNumber int
	firstNumber = 2

	// another way, declare name and assign (one step)
	var secondNumber = 5

	// one step variable: declare name, assign value
	subtraction := 7

	var s string // relies on default value #2
	var s = "" // rarely used except multiple variables #3
	s := "" // most compact - only in functions #1
	var s string = "" // redundant variable declaration #4

	// display a welcome/instructions
	fmt.Println("Guess the Number Game")
	fmt.Println("---------------------")
	fmt.Println("")


	// take them through the games

	// give them the answer

	
}