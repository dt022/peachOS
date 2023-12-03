BOOTLOADER = boot.bin

all:
	nasm -f bin boot.asm -o $(BOOTLOADER)
	dd if=./message.txt >> $(BOOTLOADER)
	dd if=/dev/zero bs=512 count=1 >> $(BOOTLOADER)

qemu:
	qemu-system-x86_64 -hda $(BOOTLOADER)