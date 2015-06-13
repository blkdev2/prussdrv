all: libprussdrv.a

libprussdrv.a: prussdrv.o
	ar rcs $@ $^

prussdrv.o: prussdrv.c __prussdrv.h
	$(CC) $(CFLAGS) -fPIC -I. -c prussdrv.c -o $@

.PHONY: clean

clean:
	rm -f libprussdrv.a prussdrv.o
