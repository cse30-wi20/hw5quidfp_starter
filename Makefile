EXE = quidfp
OBJS = main.o quidfp2float.o

CFLAGS = -g -O0 --std=gnu99

.PHONY: clean

$(EXE) : $(OBJS)
	gcc -o $@ $(CFLAGS) $(OBJS) $(LIBS)

main.o : main.c

quidfp2float.o : quidfp2float.S
	gcc -c $(CFLAGS) -gstabs+ quidfp2float.S

clean :
	rm -f $(OBJS)
	rm $(EXE)

