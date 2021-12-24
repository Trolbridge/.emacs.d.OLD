package main

import "log"

type User struct {
	FirstName string
	LastName  string
}

func main() {
	// Maps are very very fast
	// Maps are unsorted
	// Will access the same Map from any location, do not need to use pointers to access them


	// Store Anything in maps, even user types:
	myMap := make(map[string]User)

	me := User{
		FirstName: "Dennis",
		LastName:  "Mitchell",
	}

	myMap["me"] = me

	log.Println(myMap["me"].FirstName, myMap["me"].LastName)

}
