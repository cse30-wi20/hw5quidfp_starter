CFLAGS = -g -O0 --std=gnu99

.PHONY: clean

default : quidfp makebin

makebin : makebin.c
	gcc -o makebin $(CFLAGS) makebin.c

quidfp : main.o quidfp2float.o
	gcc -o quidfp $(CFLAGS) main.c quidfp2float.S

main.o : main.c

quidfp2float.o : quidfp2float.S
	gcc -c $(CFLAGS) -gstabs+ quidfp2float.S

clean :
	rm -f *.o
	rm -f quidfp
	rm -f makebin

