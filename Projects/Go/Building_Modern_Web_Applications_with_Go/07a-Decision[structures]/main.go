package main

import "log"

func main() {
	isTrue := true
	if isTrue {
		log.Println("If statement")
	} else if !isTrue {
		log.Println("else if statement")
	} else {
		log.Println("else statement")
	}
}
