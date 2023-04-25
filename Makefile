all: trpo

trpo: programming.o func.o
	gcc -Wall -o trpo programming.o func.o

programming.o: programming.c
	gcc -Wall -c -o programming.o programming.c

func.o: func.c
	gcc -Wall -c -o func.o func.c

clean:
	rm trpo *.o

run:
	./trpo