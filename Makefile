CC ?= gcc

.PHONY: clear

libsum.so:
	$(CC) -shared c/main.c -o libsum.so

clear:
	rm libsum.so main