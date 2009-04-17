cmd_kernel/time/built-in.o :=  ld  -m elf_i386  -r -o kernel/time/built-in.o kernel/time/clocksource.o kernel/time/jiffies.o
