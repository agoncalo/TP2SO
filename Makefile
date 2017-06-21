CC = gcc
CFLAGS = -Wall -fPIC -g
LDFLAGS = -shared

TLIB = libtp2so.so
TDIR = /usr/lib/

ARQ = fatorial.c zero.c isMyPcOn.c div.c
OBJ = $(ARQ:.c=.o)

.PHONY: all
all: $(TLIB)
	mv $(TLIB) $(TDIR)

$(TLIB): $(OBJ)
	$(CC) $(LDFLAGS) -lm -o $@ $^; \
	$(CC) teste.c -o teste -ltp2so

.PHONY: clean
clean:
	rm ${OBJ} $(ARQ:.c=.d)
