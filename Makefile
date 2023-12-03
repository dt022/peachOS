BOOTLOADER = boot.bin

all:
	nasm -f bin ./src/boot/boot.asm -o ./bin/$(BOOTLOADER)

qemu:
	nasm -f bin ./src/boot/boot.asm -o ./bin/$(BOOTLOADER)
	qemu-system-x86_64 -hda ./bin/$(BOOTLOADER)

clean:
	rm -rf ./bin/$(BOOTLOADER)