package main;

import "core:fmt";
import "core:os";

readLine :: proc(buf: []byte) -> string {
	n, err := os.read(os.stdin, buf);
	if err != nil {
		fmt.eprintln("Error!!!!: ", err);
		return "help";
	}
	str := string(buf[:n]);
	return str;
}