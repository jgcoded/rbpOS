mkdir -p bin
cd bin
arm-eabi-g++ -mcpu=arm1176jzf-s -fpic -ffreestanding -c ../arch/arm/boot.S -o boot.o
arm-eabi-g++ -mcpu=arm1176jzf-s -fpic -ffreestanding -c ../kernel/kernel.cpp -o kernel.o -O2 -Wall -Wextra
arm-eabi-g++ -T ../linker.ld -o rbpOS.elf -ffreestanding -O2 -nostdlib boot.o kernel.o
arm-eabi-objcopy rbpOS.elf -O binary rbpOS.bin
