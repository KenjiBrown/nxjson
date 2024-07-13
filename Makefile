
all: nxjson nxjson.so

nxjson: nxjson.c test.c nxjson.o nxjson.h
	gcc -O0 -g -Wall ${CFLAGS} nxjson.o test.c -o nxjson

nxjson.so: nxjson.o
	gcc -O0 -g -Wall ${CFLAGS} -shared  nxjson.o -o nxjson.so

nxjson.o: nxjson.c
	gcc -O0 -g -Wall ${CFLAGS} -c -fPIC nxjson.c -o nxjson.o 

clean:
	rm -fv nxjson nxjson.o nxjson.so

.PHONY: clean
