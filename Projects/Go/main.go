package main

import (
	"fmt"
	"os/exec"
	"runtime"
)
// Test Git Modify

func main() {
	if runtime.GOOS == "windows" {
		fmt.Println("Can't Execute this on a windows machine")
	} else {
		execute()
	}
}

func execute() {
	var myDir string = "/Users/trolbridge/.emacs.d"
	fmt.Printf(check(&myDir))
	myDir = "/Users/trolbridge/OrgRoam"
	fmt.Printf(check(&myDir) + "\n")

}

func check(myDir *string) string {
	cmd := exec.Command("git", "status")
	cmd.Dir = *myDir
	out, err := cmd.Output()
	if err != nil {
		fmt.Printf("%s", err)
	}
	// var output = string(out[:])
	myTest := "On branch master\nYour branch is up to date with 'origin/master'.\n\nnothing to commit, working tree clean\n"
	output := string(out[:])

	var myResult string = ""
	if myTest == output {
		myResult = ""
	} else if myTest != output {
		fmt.Printf("\n" + *myDir + " - ")
		myResult = "Updated"
	}
	return myResult
}
