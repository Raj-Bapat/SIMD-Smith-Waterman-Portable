sw_test.out: main.o sw1.o sw2.o sw3.o sw4.o
	g++ -g -o sw_test.out main.o sw1.o sw2.o sw3.o sw4.o
main.o: main.cpp Aligner.h sw1.h sw2.h sw3.h sw4.h
	g++ -g -c main.cpp
sw1.o: sw1.cpp sw1.h Aligner.h
	g++ -g -c sw1.cpp
sw2.o: sw2.cpp sw2.h Aligner.h
	g++ -g -c sw2.cpp
sw3.o: sw3.cpp sw3.h Aligner.h
	g++ -g -c sw3.cpp
sw4.o: sw4.cpp sw4.h Aligner.h
	g++ -g -c sw4.cpp
