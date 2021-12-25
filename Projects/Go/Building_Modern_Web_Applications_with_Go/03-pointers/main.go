package main

import (
	"fmt"
	"log"
)

func main() {
	var myString = "Green"
	log.Println("myString = ", myString)
	changeUsingPointer(&myString)
	log.Println("after pointer call, myString = ", myString)
}

func changeUsngPointer(string *string) {
	panic("unimplemented")
}

func changeUsingPointer(s *string) {
	fmt.Println("s is set to ", s)
	*s = "Red"
	// newValue := "Red"
	// *s = newValue
}
