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
	name: string
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
		creature[i].power = rand.uint32_max(100);
		creature[i].hunger = rand.uint32_max(100);
		creature[i].name = nameGen();
		fmt.println(creature[i].name, "has", creature[i].power, "power and", creature[i].hunger, "hunger." );
		
	
			
	}

}

