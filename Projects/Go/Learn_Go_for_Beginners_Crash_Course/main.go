package main

import (
	"fmt"
	"myapp/doctor"
)
func main() {
	whatToSay := doctor.Intro()
	hi := doctor.Hello

	// whatToSay = doctor.Intro()

	fmt.Println(whatToSay)
	fmt.Println(hi)
	
}
