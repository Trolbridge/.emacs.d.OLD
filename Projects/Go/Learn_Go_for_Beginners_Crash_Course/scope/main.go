package main

import (
	// "fmt"
	"myapp/packageone"
)

var myVar = "myVar"

func main() {
// variables
// declare a package level variable for the main
// package named myVar

// declare a block variable for the main function
// called blockVar
	var blockVar = "blockVar"

	// fmt.Println(myVar," ", blockVar)
// declare a package level variable in the packageone
// package named PackageVar

// create an exported function in packageone called PrintMe

// in the main function, print out the values of myVar,
// blockVar, and PackageVar on one line using the PrintMe
// function in packageone
	packageone.PrintMe(myVar, blockVar)


}
