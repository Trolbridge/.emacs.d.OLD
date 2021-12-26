package main

import "log"

func main() {
	animals := make(map[string]string)
	animals["dog"] = "Fido"
	animals["cat"] = "Fluffy"

	for animalType, animals := range animals {
		log.Println(animalType, animals)
	}

}
