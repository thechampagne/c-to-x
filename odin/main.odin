package main

foreign import lib "libsum.so"

import "core:fmt"

foreign lib {
    sum :: proc(a: i32, b: i32) -> i32 ---
}

main :: proc() {

    fmt.println(sum(50 , 50))
}