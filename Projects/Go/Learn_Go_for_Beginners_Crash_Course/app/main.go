package main

import (
	"bufio"
	"doctor"
	"fmt"
	"os"
)
func main() {
	reader := bufio.NewReader(os.Stdin)


	whatToSay := doctor.Intro()
	// groceryList := doctor.GroceryList
	// whatToSay = doctor.Intro()

	fmt.Println(whatToSay)
	// fmt.Println("Grocery List:", groceryList)

	for {
		fmt.Print("-> ")
		userInput, _ := reader.ReadString('\n')
		if userInput == "quit\n" || userInput == "Quit\n" {
			break
		}
		
		response := doctor.Response(userInput)
		fmt.Println(response)
	}
	
}
