#flag -L.
#flag -l:./libsum.so
fn C.sum(a int, b int) int

fn main() {
    println(C.sum(50,50))
}