#include <stdio.h>
#include <stdlib.h>

/*
 * This code will take a file of 8-bit hex digits written with
 * ascii chars and output a file with those hex digits actually
 * written in hexadeciaml. This new file will therefore be illegible,
 * but this is the appropriate format for an input into quidFP2float.
 */
int main(int argc, char **argv) {
	if(argc != 3) {
		fprintf(stderr, "usage: %s %s %s\n",
			argv[0], "file of hex numbers", "output bin file");
		exit(-1);
	}
	FILE *fin;
	FILE *fout;

	if((fin = fopen(argv[1], "r")) == NULL) {
		fprintf(stderr, "couldn't open file %s\n", argv[1]);
		exit(-1);
	}

	if((fout = fopen(argv[2], "w")) == NULL) {
		fprintf(stderr, "couldn't open file %s\n", argv[2]);
		exit(-1);
	}

	unsigned int uint;
	while(fscanf(fin, "%x", &uint) > 0){
		printf("got %x\n", uint);
		fflush(stdout);
		fwrite(&uint, 1, 1, fout);
	}
	fclose(fin);
	fclose(fout);
}
