# PeachOS implementation
this is a OS with kernel and custom bootloader created when learning OS & kernel development

# Emulating bootloader
```
nasm -f bin boot.asm -o boot.bin
qemu-system-x86_64 -hda ./boot.bin
```

# Reference
https://www.udemy.com/course/developing-a-multithreaded-kernel-from-scratch