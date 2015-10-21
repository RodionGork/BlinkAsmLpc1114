#Blinking LED in ARM assembly with LPC1114

Attach LED to PIO0-2 or PIO0-3 - it will turn on and off with timeout about 1 second.

Build commands:

    arm-linux-gnueabi-as -mthumb -mcpu=cortex-m0 -o test.o test.s
    
    arm-linux-gnueabi-ld -T lpc1114.ld -nostdlib -Map=test.map -o test.elf test.o
    
    arm-linux-gnueabi-objcopy test.elf -O ihex test.hex
    
    lpc21isp -NXPARM test.hex /dev/ttyUSB0 115200 12000

