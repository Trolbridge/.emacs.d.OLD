package main

import (
	"fmt"
	"doctor"
)
func main() {
	whatToSay := doctor.Intro()
	hi := doctor.Hello

	// whatToSay = doctor.Intro()

	fmt.Println(whatToSay)
	fmt.Println(hi)
	
}
