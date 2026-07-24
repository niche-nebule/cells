package main;

import "core:fmt";
import "core:os";
import "core:math/rand";
import "core:strconv";
import "core:time";

Cell :: struct {
	hunger : u32,
	power: u32,
}

main :: proc() {
	buf: [256]byte;
	seed := time.time_to_unix(time.now());
	rand.reset(u64(seed));

	maxDudes, err := strconv.parse_uint(readLine(buf[:]), 10);
	
	pee := int(maxDudes);

	creatures := make([]Cell, pee);

	for i := 0; i < pee; i += 1 {
		creatures[i].power = rand.uint32_max(100);
		fmt.print(" ", creatures[i].power);
			
	}

}

