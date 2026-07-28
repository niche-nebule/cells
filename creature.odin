package main;

import "core:math/rand";
import "core:strings";
import "core:reflect";
import "core:fmt"

name:= [?]string{"bee", "vee", "gee", "floo", "boop", "oo", "aa", "jish", "yuh", "grak",
"bru", "shele", "chur", "zui", "juj", "quo", "ghorn", "johnathan", "bill",
"asx"};

nameGen :: proc() -> string {
    sb := strings.builder_make();
    for i in 0..=2 {
        strings.write_string(&sb, name[rand.uint32_max(len(name))]);
    }
    theString := strings.to_string(sb);
    



 return theString;
}

printFull :: proc(c: Cell ) {
    sb := strings.builder_make(); 
    fmt.sbprint(&sb, "(", c.alive ? "alive" : "dead", ") ", sep = "")
    strings.write_string(&sb, c.name);
    strings.write_string(&sb, " the ");
    strings.write_string(&sb, reflect.enum_string(c.trait));
    strings.write_string(&sb, " has ");
    strings.write_uint(&sb, uint(c.power));
    strings.write_string(&sb, " power and ");
    strings.write_uint(&sb, uint(c.hunger));
    strings.write_string(&sb, " hunger.");

    theString := strings.to_string(sb);
    fmt.println(theString)
}

traitAlter :: proc(c: Cell) {
    switch c.trait {
        case .strong:
            fmt.println("Strong!")
        case .weak:
            fmt.println("Weak!")
        case .insane:
            fmt.println("Insane!")
        case .starved:
            fmt.println("Starved!")
        case .full:
            fmt.println("Full!")
        case .aggresive:
            fmt.println("Aggressive!")
        case .happy:
            fmt.println("Happy!")
    
    }
}

generateCreature :: proc(c: ^Cell) {
    c.power = rand.uint32_max(100);
	c.hunger = rand.uint32_max(100);
	c.name = nameGen();
	c.trait = Trait(rand.uint32_max(u32(len(Trait))))
}