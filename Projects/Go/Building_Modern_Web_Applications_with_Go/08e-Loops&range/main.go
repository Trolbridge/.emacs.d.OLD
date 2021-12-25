package main

import "log"

func main() {
	var firstLine = "And God said, Let there be light: and there was light. - Genesis 1:3"

	for i, l := range firstLine {
		log.Println(i, ":", l)
	}
}
