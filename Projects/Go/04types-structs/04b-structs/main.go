package main

import (
	"log"
	"time"
)

type User struct {
	FirstName   string
	LastName    string
	PhoneNumber string
	Age         int
	BirthDate   time.Time
}

func main() {
	user := User{
		FirstName: "Dennis",
		LastName:  "Mitchell",
		BirthDate: ("1968"),
	}

	log.Println(user.FirstName, user.LastName, user.BirthDate)
}
