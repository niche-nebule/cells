package main;

import "core:fmt";
import "core:os";

Cell :: struct {
	hunger : u32,
	power: u32,
}

main :: proc() {
	buf: [256]byte;
	str := getText(buf[:]);

	fmt.println(str);
	fmt.println(getText(buf[:]));
	//creatures : []Cell;

	//for i := 1; i < 10; i += 1 {	

	//}

}

getText :: proc(buf: []byte) -> string {
	fmt.print("Enter text: ");
	n, err := os.read(os.stdin, buf);
	if err != nil {
		fmt.eprintln("Error!!!!: ", err);
		return "help";
	}
	str := string(buf[:n]);
	if (str == "\n") {
		fmt.print("You entered a new line!");
	}
	return str;
}