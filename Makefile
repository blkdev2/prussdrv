all: libprussdrv.a

libprussdrv.a: prussdrv.o
	ar rcs $@ $^

prussdrv.o: prussdrv.c __prussdrv.h
	$(CC) $(CFLAGS) -I. -c prussdrv.c -o $@
