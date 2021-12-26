package main

import (
	"log"
	"sort"
)

// Almost next use Arrays
// Instead we use Slices

func main() {

	var mySlice []string
	mySlice = append(mySlice, "Dennis")

	log.Println(mySlice)
	log.Println(mySlice[0])

	var mySliceInts []int
	var myBefore []int
	mySliceInts = append(mySliceInts, 2, 3, 4, 1, 28, 17)
	// shorthand
	numbers := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 0}
	log.Println(mySliceInts)

	myBefore = append(myBefore, mySliceInts...)
	// log.Println(myBefore)
	sort.Ints(mySliceInts)
	after := mySliceInts
	log.Println(after)
	log.Println(myBefore)
	log.Println(numbers)
	log.Println(numbers[6:9])
}
