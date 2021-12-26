package main

import "log"

func main() {

	myMap := make(map[string]string)
	myMap["dog"] = "Samson"
	myMap["other-dog"] = "Cassie"

	log.Println(myMap)
	log.Println(myMap["dog"])

	myMap2 := make(map[string]int)
	myMap2["First"] = 1
	myMap2["Second"] = 2
	
	log.Println(myMap["other-dog"])
	log.Println(myMap2["First"],myMap2["Second"])

}
