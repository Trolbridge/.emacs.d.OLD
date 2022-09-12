package main

import (
	"bufio"
	"doctor"
	"fmt"
	"os"
	"strings"
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

		// For windows machines:
		userInput = strings.Replace(userInput, "\r\n", "", -1) 
		// For Mac, linux or FreeBSD:
		userInput = strings.Replace(userInput, "\n", "", -1)

		if userInput == "quit" || userInput == "Quit" {
			break
		} else {
			fmt.Println(doctor.Response(userInput))
		}
		
	}
	
}
