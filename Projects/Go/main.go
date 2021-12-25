package main

import (
	"fmt"
	"os/exec"
	"runtime"
)

func check() {
	// _, err := exec.Command("cd", "/Users/trolbridge/.emacs.d").Output()

	// if err != nil {
	// 	fmt.Printf("%s", err)
	// }

	// out, err := exec.Command("pwd").Output()

	// if err != nil {
	// 	fmt.Printf("%s", err)
	// }
	// output := string(out[:])
	// fmt.Printf("Checking %s", output)

	out2, err := exec.Command("/Users/trolbridge/.emacs.d/", "git", "status").Output()
	if err != nil {
		fmt.Printf("%s", err)
	}
	output2 := string(out2[:])
	fmt.Println(output2)

}
func check2() {
	// fmt.Println("Checking ~/OrgRoam")
	out, err := exec.Command("cd", "/Users/trolbridge/.emacs.d").Output()

	if err != nil {
		fmt.Printf("%s", err)
	}
	output := string(out[:])
	fmt.Printf("Checking %s", output)

	out2, err := exec.Command("pwd").Output()
	// out2, err := exec.Command("git", "status").Output()
	if err != nil {
		fmt.Printf("%s", err)
	}

	// fmt.Println("Command Successfully Executed")
	output2 := string(out2[:])
	fmt.Println(output2)
}

func check3() {
	cmd := exec.Command("git", "status")
	cmd.Dir = "/Users/trolbridge/.emacs.d"
	out, err := cmd.Output()
	if err != nil {
		fmt.Printf("%s", err)
	}
	output := string(out[:])
	fmt.Println(output)
}

func check4(myDir *string) string {
	cmd := exec.Command("git", "status")
	fmt.Printf("\n" + *myDir + "\n\n")
	cmd.Dir = *myDir
	out, err := cmd.Output()
	if err != nil {
		fmt.Printf("%s", err)
	}
	// var output = string(out[:])
	output := string(out[:])
	fmt.Println(output)
	imDone := "Im done\n"
	return imDone
}

func execute() {
	// check()
	// check2()
	// check3()
	var myDir string = "/Users/trolbridge/.emacs.d"
	fmt.Printf(check4(&myDir))
	// check4(&myDir)
	myDir = "/Users/trolbridge/OrgRoam"
	fmt.Printf(check4(&myDir))
}

func main() {
	if runtime.GOOS == "windows" {
		fmt.Println("Can't Execute this on a windows machine")
	} else {
		execute()
	}
}
