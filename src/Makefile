sw_test.out: main.o Aligner.o
	g++ -g -o sw_test.out main.o Aligner.o
main.o: main.cpp Aligner.h
	g++ -g -c main.cpp
Aligner.o: Aligner.cpp Aligner.h
	g++ -g -c Aligner.cpp