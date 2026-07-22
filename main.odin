package main

import "core:fmt"

main :: proc() {
	p: ^int
	i := 1333
	p = &i 
	fmt.println("worked")
}