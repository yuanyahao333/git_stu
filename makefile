all:main.exe
main.exe:main.o add.o
	gcc -o main.exe main.o add.o
main.o:main.c
	gcc -c main.o main.c add.c
add.o:add.c
	gcc -c add.o add.c
clean:
	rm -rf *.o main.exe