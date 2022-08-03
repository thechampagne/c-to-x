extern {
    fn sum(a: i32, b: i32) -> i32;
}

fn main() {
    println!("{}", unsafe { sum(50,50) })
}