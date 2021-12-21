package main

import "fmt"

func main() {
	fmt.Println("Hello again")

	var whatToSay string = "Goodbye"
	var i int = 7
	fmt.Println(whatToSay)
	fmt.Println(i)
	whatWasSaid, theOtherThingThatWasSaid := saySomething()
	fmt.Println(whatWasSaid, theOtherThingThatWasSaid)
}

func saySomething() (string, string) {
	return "something", "else"
}
