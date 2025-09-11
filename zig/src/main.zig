const std = @import("std");
const zig = @import("zig");

pub fn main() void {
    std.debug.print("Hello {s}!\n", .{"Giok"});
    const x: i32 = 2;
    const y: i32 = 0;
    const result = zig.add_two_numbers(x, y) catch |err| {
        std.debug.print("error: invalid Number with {}\n", .{err});
        std.process.exit(1);
        unreachable;
    };
    std.debug.print("result: {d}\n", .{result});
    return;
}
