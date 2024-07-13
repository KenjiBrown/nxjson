
all: nxjson libnxjson.so

nxjson: nxjson.c test.c nxjson.o nxjson.h
	gcc -O0 -g -Wall ${CFLAGS} nxjson.o test.c -o nxjson

libnxjson.so: nxjson.o
	gcc -O0 -g -Wall ${CFLAGS} -shared  nxjson.o -o libnxjson.so

nxjson.o: nxjson.c
	gcc -O0 -g -Wall ${CFLAGS} -c -fPIC nxjson.c -o nxjson.o 

clean:
	rm -fv nxjson nxjson.o libnxjson.so

.PHONY: clean
