all: figure

figure:
	gcc -o figure Figure4_11.c -pthread -lrt
