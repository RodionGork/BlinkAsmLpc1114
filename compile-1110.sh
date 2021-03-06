arm-linux-gnueabi-as -mthumb -mcpu=cortex-m0 -o test.o test.s
arm-linux-gnueabi-ld -T lpc1110.ld -nostdlib -Map=test.map -o test.elf test.o
arm-linux-gnueabi-objcopy test.elf -O ihex test.hex

#use mxli version 2.3
mxli -d /dev/ttyUSB0 -b 9600 -c 12000000 -R 0x200,0x100 test.hex