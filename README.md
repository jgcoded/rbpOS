Messing around with the RaspberryPi by building a toy OS. This project
targets the RaspberryPi 1 Model B Rev 2.

Read this as an introduction: http://wiki.osdev.org/Raspberry_Pi_Bare_Bones
and use the reference manual in the docs/ folder.

Develop on a Linux x86 64-bit machine and use these prebuilt binaries
as your cross compiler:
http://newos.org/toolchains/arm-eabi-4.9.1-Linux-x86_64.tar.xz

To build the kernel, make sure the above cross compiler is in your
PATH and then run ./build.sh. 

If you prefer testing with VMs or if you don't have a RaspberryPi, test out the OS with QEMU. The OSDev wiki
I linked to above has a section on using QEMU, but that didn't work for me. Instead, I did the following:

```
$ sudo apt-get install sudo apt-get install qemu-system-arm
$ qemu-system-arm -kernel rbpOS.elf -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio
```
