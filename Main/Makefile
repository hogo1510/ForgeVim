CC=gcc
CFLAGS=-Wall -Wextra -O2
TARGET=forgevim
VIM_DIR = ..

all: build_vim $(TARGET)

build_vim:
	@echo "Vim is Building..."
	cd $(VIM_DIR) && make

$(TARGET): main.o 
	$(CC) $(CFLAGS) main.o -o $(TARGET)

main.o: main.c 
	$(CC) $(CFLAGS) -c main.c -o main.o

clean:
	cd $(VIM_DIR) && make clean
	rm -f main main.o 