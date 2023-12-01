# PeachOS implementation
this is a very basic OS with kernel and custom bootloader created for learning OS & kernel development

## Emulating bootloader
```
nasm -f bin boot.asm -o boot.bin
qemu-system-x86_64 -hda ./boot.bin
```

## Reference
[Developing a multithreaded kernel from scratch](https://www.udemy.com/course/developing-a-multithreaded-kernel-from-scratch)