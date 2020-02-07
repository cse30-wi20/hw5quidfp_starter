#
# CSE30 Makefile
#
# we declare the object we want to build in the variable EXE
# we list the objects we want to compile (from c) in OBJS
#
# we provide a phony target clean to rm all the .o files
#

<<<<<<< HEAD
EXE = quidfp
=======
EXE = quidditchfp
>>>>>>> db86b1af66831df0bfec850a5cebb9e7cfe92414
OBJS = main.o quidfp2float.o
LIBS = 
CC = gcc 
CFLAGS = -g -O0
CFLAGS +=  --std=gnu99

.PHONY: clean

$(EXE) : $(OBJS)
	gcc -o $@ $(CFLAGS) $(OBJS) $(LIBS)

main.o : main.c
quidfp2float.o : quidfp2float.S
	gcc -c $(CFLAGS) -gstabs+ quidfp2float.S

clean :
	rm -f $(OBJS)
	rm $(EXE)

