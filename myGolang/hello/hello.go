package main

import (
    "fmt"

    "github.com/trolbridge/.emacs.d/myGolang/greetings"
)

func main() {
    // Get a greeting message and print it.
    message := greetings.Hello("Dennis")
    fmt.Println(message)
}
