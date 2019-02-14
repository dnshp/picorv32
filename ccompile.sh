/opt/riscv32i/bin/riscv32-unknown-elf-gcc -o ctest.elf ctest.c
/opt/riscv32i/bin/riscv32-unknown-elf-objcopy -O binary ctest.elf ctest.bin
python3 firmware/makehex.py ctest.bin 16384 > ctest.hex
rm ctest.elf
#rm ctest.bin
