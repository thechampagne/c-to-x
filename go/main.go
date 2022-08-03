package main

/*
#cgo LDFLAGS: -L../ -l:./libsum.so

int sum(int a, int b);
*/
import "C"
import "fmt"

func main() {
	fmt.Println(C.sum(50,50))
}