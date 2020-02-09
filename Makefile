CFLAGS = -g -O0 --std=gnu99

.PHONY: clean

default : quidfp makebin

makebin : makebin.c
	gcc -o makebin $(CFLAGS) makebin.c

quidfp : main.o quidFP2float.o
	gcc -o quidfp $(CFLAGS) main.o quidFP2float.S

main.o : main.c

quidFP2float.o : quidFP2float.S
	gcc -c $(CFLAGS) -gstabs+ quidFP2float.S

clean :
	rm -f *.o
	rm -f quidfp
	rm -f makebin

