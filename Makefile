CC ?= gcc
ZIG ?= zig
GO ?= go
DD ?= dmd
RUST ?= rustc

.PHONY: zig go d rust clear

libsum.so:
	$(CC) -shared c/main.c -o libsum.so

zig: libsum.so
	$(ZIG) build-exe zig/main.zig -lc -L. -lsum
	./main

go: libsum.so
	$(GO) build go/main.go
	./main

d: libsum.so
	$(DD) -L-L. -L-l:./libsum.so d/main.d
	./main

rust: libsum.so
	$(RUST) -C link-args="-L. -l:./libsum.so" rust/main.rs
	./main

clear:
	rm libsum.so main