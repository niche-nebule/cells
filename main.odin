package main;

import "core:fmt";
import "core:os";
import "core:math/rand";
import "core:strconv";

Cell :: struct {
	hunger : u32,
	power: u32,
}

main :: proc() {
	buf: [256]byte;
	maxDudes, err := strconv.parse_uint(readLine(buf[:]), 10);
	
	pee := int(maxDudes);

	creatures := make([]Cell, pee);

	for i := 0; i < pee; i += 1 {
		creatures[i].power = 12;
		fmt.println(creatures[i].power);
			
	}

}

