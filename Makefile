all: clean compile-boot compile-kernel link-kernel
clean:
	rm -rf bin
	mkdir bin

compile-boot:
	i686-elf-as src/boot.s -o bin/boot.o

compile-kernel:
	i686-elf-gcc -c src/kernel.c -o bin/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

link-kernel:
	i686-elf-gcc -T src/linker.ld -o bin/myos.bin -ffreestanding -O2 -nostdlib bin/boot.o bin/kernel.o -lgcc
