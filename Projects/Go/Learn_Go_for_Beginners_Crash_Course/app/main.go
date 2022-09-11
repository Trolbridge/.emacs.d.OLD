package main

import (
	// "bufio"
	"doctor"
	"fmt"
	// "os"
)
func main() {
	// reader := bufio.NewReader(os.Stdin)


	whatToSay := doctor.Intro()
	hi := doctor.Hello
	b := doctor.B
	

	// whatToSay = doctor.Intro()

	fmt.Println(whatToSay)
	fmt.Println(hi)
	fmt.Println("Grocery List:", b)

	// userInput, _ := reader.ReadString('\n')

	// fmt.Println(userInput)

	
}
