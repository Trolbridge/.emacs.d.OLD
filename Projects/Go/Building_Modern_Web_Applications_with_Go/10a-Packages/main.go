package main

import (
	"log"

	"github.com/trolbridge/.emacs.d/Projects/Go/Building_Modern_Web_Applications_with_Go/10a-Packages/helpers"
)

func main() {
	log.Println("Hello")

	// var myVar helpers.SomeTypeSomeType
	var myVar helpers.SomeType
	myVar.TypeName = "Some Name"
	log.Println(myVar.TypeName)

}
