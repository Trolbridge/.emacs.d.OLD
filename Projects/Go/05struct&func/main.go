package main

import "log"

// Declare struct
type myStruct struct {
	FirstName string
}

//  Pointer to myStruct, to create a function for it
func (m *myStruct) printFirstName() string {
	return m.FirstName
}

func main() {
	var myVar myStruct
	myVar.FirstName = "Dennis"

	myVar2 := myStruct{
		FirstName: "mary",
	}

	myVar3 := myStruct{}

	log.Println("myVar2 is set to", myVar2.FirstName)
	log.Println("myVar3 is set to", myVar3.FirstName)
	log.Println("myVar is set to", myVar.FirstName)
	log.Println("myVar is set to", myVar.printFirstName())
}
