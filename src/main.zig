// So I guess std is the const name here, and type is whatever the std library is?
// Maybe type can be a library or module?
const std = @import("std");
const print = std.debug.print;

// public function main.
// I dont know the difference betwen void and !void. But they both are return types.
// Aha, I now know the !void. It indicates that the return may return an error.
pub fn main() !void {
    // const name, type i a GenericWriter, so its implied. I like that.
    const stdout = std.io.getStdOut().writer();
    // Ahh, its Hello, s is the String argument "World, and then ! and then a new line \n"
    try stdout.print("Hello, {s}!\n", .{"world"});
    // What is the try keyword?

    // I think this is a more common approach.
    std.debug.print("This is a debug statement with an {s}.\n", .{"argument"});

    print("Or just print the easy way by importing the specific function", .{});
}

// So a function without the possibility of returning a error
