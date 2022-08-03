CC ?= gcc
ZIG ?= zig

.PHONY: zig clear

libsum.so:
	$(CC) -shared c/main.c -o libsum.so

zig: libsum.so
	$(ZIG) build-exe zig/main.zig -lc -L. -lsum
	./main

clear:
	rm libsum.so main