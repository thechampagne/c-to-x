const std = @import("std");

extern "C" fn sum(a: i32, b: i32) i32;

pub fn main() void {
    std.debug.print("{d}\n", .{sum(50,50)});
}