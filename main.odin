package main;

import "core:fmt";
import "core:os";
import "core:math/rand";
import "core:strconv";
import "core:time";
import "core:strings";

Cell :: struct {
	hunger : u32,
	power: u32,
	name: string,
	alive: bool,
	trait : Trait
}

Trait :: enum {
	strong,
	weak,
	insane,
	starved,
	full,
	aggresive,
	happy
}



main :: proc() {
	buf: [256]byte;
	

	seed := time.time_to_unix(time.now());
	rand.reset(u64(seed));

	fmt.print("Enter creatures to spawn: ");
	maxDudes, err := strconv.parse_uint(readLine(buf[:]), 10);
	


	pee := int(maxDudes);

	creature := make([]Cell, pee);

	for i in 0..<pee {
		generateCreature(&creature[i])
		creature[i].alive = creature[i].power > 50
		printFull(creature[i])
	}



}

