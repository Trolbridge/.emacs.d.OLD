package packageone


import (
	"fmt"
)

var PackageVar = "PackageVar"

func PrintMe(string1, string2 string) {
	fmt.Println(string1, string2, PackageVar)
}

func PrintMeMe() {
	fmt.Println("Hi")
}
