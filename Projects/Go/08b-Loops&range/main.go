package main

import "log"

func main() {
	animals := []string{"dog", "cat", "fish", "horse", "cow", "elephant"}

	for _, animals := range animals {
		log.Println(animals)
	}
	
}
