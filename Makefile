all:
	nasm -f bin ./src/boot/boot.asm -o ./bin/boot.bin

qemu:
	nasm -f bin ./src/boot/boot.asm -o ./bin/boot.bin
	qemu-system-x86_64 -hda ./bin/boot.bin

gdb:
	nasm -f bin ./src/boot/boot.asm -o ./bin/boot.bin
	gdb -q -ex "target remote | qemu-system-x86_64 -hda ./bin/boot.bin -S -gdb stdio"

clean:
	rm -rf ./bin/boot.bin