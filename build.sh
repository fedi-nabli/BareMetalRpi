aarch64-linux-gnu-gcc -c boot.S -o ./build/boot.o
aarch64-linux-gnu-gcc -c main.S -o ./build/main.o
aarch64-linux-gnu-gcc -c lib.S -o ./build/lib.o
aarch64-linux-gnu-ld -nostdlib -T link.lds -o ./bin/kernel ./build/boot.o ./build/main.o ./build/lib.o
aarch64-linux-gnu-objcopy -O binary ./bin/kernel ./bin/kernel8.img