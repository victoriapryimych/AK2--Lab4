all: helloWorld

helloWorld: main.o fooLib.a
	g++ -o helloWorld main.o fooLib.a

main.o: main.cpp
	g++ -c main.cpp

foo.o: foo.cpp foo.h
	g++ -c foo.cpp

fooLib.a: foo.o
	ar rvs fooLib.a foo.o

clean:
	rm -rf helloWorld *.o *.a *.gch
