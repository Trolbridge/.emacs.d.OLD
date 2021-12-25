package main

import "log"

func main() {
	type User struct {
		FirstName string
		LastName  string
		Email     string
		Age       int
	}

	var users []User
	users = append(users, User{"John", "Smith", "john@smith.com", 30})
	users = append(users, User{"Mary", "Jones", "Mary@Jones.com", 48})
	users = append(users, User{"Sally", "Fields", "sally@fields.com", 53})
	users = append(users, User{"Alex", "Anderson", "alex@anderson.com", 79})

	for _, l := range users {
		log.Println(l.FirstName, l.LastName, l.Email, l.Age)
	}
}
