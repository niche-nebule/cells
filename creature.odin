package main;

import "core:math/rand";
import "core:strings";

name:= [?]string{"bee", "vee", "gee", "floo", "boop", "oo", "aa", "jish", "yuh", "grak", "bru", "shele", "chur", "zui"};

nameGen :: proc() -> string {
    sb := strings.builder_make();
    for i in 0..=2 {
        strings.write_string(&sb, name[rand.uint32_max(len(name))]);
    }
    theString := strings.to_string(sb);
    



 return theString;
}