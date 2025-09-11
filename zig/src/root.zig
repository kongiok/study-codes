const std = @import("std");

pub const ValueError = error{
    Invalid,
};

pub fn add_two_numbers(
    x: i32,
    y: i32,
) !i32 {
    if (0 > x or 0 > y) {
        return ValueError.Invalid;
    }
    return y + x;
}

test "args should greater then 0" {
    try std.testing.expectError(ValueError.Invalid, add_two_numbers(-1, 0));
    try std.testing.expectError(ValueError.Invalid, add_two_numbers(0, -1));
}

test "function should be equalevant" {
    try std.testing.expectEqual(3, add_two_numbers(1, 2));
    try std.testing.expectEqual(5, add_two_numbers(0, 5));
}
