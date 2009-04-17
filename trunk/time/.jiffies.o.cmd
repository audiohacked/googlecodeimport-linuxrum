cmd_kernel/time/jiffies.o := gcc -Wp,-MD,kernel/time/.jiffies.o.d  -nostdinc -isystem /usr/lib/gcc/i486-linux-gnu/4.2.4/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Os  -D__arch_um__ -DSUBARCH=\"i386\" -Iarch/um/include  -I/home/bob/UML/linux-2.6.18.8/arch/um/include/skas -Dvmap=kernel_vmap -Din6addr_loopback=kernel_in6addr_loopback -Derrno=kernel_errno -Dsigprocmask=kernel_sigprocmask -Dmktime=kernel_mktime -fno-unit-at-a-time -U__i386__ -Ui386 -march=i686 -mtune=pentium2 -mtune=generic -mpreferred-stack-boundary=2 -ffreestanding -D_LARGEFILE64_SOURCE -fomit-frame-pointer  -fno-stack-protector -Wdeclaration-after-statement -Wno-pointer-sign    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(jiffies)"  -D"KBUILD_MODNAME=KBUILD_STR(jiffies)" -c -o kernel/time/jiffies.o kernel/time/jiffies.c

deps_kernel/time/jiffies.o := \
  kernel/time/jiffies.c \
  include/linux/clocksource.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/resources/64bit.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler.h \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/forced/inlining.h) \
  include/linux/compiler-gcc.h \
  include/asm/posix_types.h \
  include/asm/arch/posix_types.h \
  include/asm/types.h \
  include/asm/arch/types.h \
    $(wildcard include/config/highmem64g.h) \
    $(wildcard include/config/lbd.h) \
    $(wildcard include/config/lsf.h) \
  include/linux/timex.h \
    $(wildcard include/config/time/interpolation.h) \
  include/linux/time.h \
  include/linux/seqlock.h \
  include/linux/spinlock.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
  include/linux/thread_info.h \
  include/linux/bitops.h \
  include/asm/bitops.h \
  include/asm/arch/bitops.h \
  include/asm/alternative.h \
  include/asm/arch/alternative.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/ext2-non-atomic.h \
  include/asm-generic/bitops/le.h \
  include/asm/byteorder.h \
  include/asm/arch/byteorder.h \
    $(wildcard include/config/x86/bswap.h) \
  include/linux/byteorder/little_endian.h \
  include/linux/byteorder/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/minix.h \
  include/asm/thread_info.h \
    $(wildcard include/config/kernel/stack/order.h) \
  include/asm/processor.h \
  include/linux/string.h \
  include/asm/string.h \
  include/asm/arch/string.h \
    $(wildcard include/config/x86/use/3dnow.h) \
  include/asm/archparam.h \
  include/asm/host_ldt.h \
  include/asm/arch/ldt.h \
  include/asm/segment.h \
  arch/um/include/sysdep/faultinfo.h \
  include/asm/arch/user.h \
  include/asm/page.h \
    $(wildcard include/config/3/level/pgtables.h) \
    $(wildcard include/config/64bit.h) \
  include/asm/vm-flags.h \
  arch/um/include/mem.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/out/of/line/pfn/to/page.h) \
  include/asm-generic/page.h \
  include/asm/processor-generic.h \
    $(wildcard include/config/mode/tt.h) \
    $(wildcard include/config/mode/skas.h) \
  include/asm/ptrace.h \
  arch/um/include/sysdep/ptrace.h \
    $(wildcard include/config/pt/proxy.h) \
  arch/um/include/user_constants.h \
  arch/um/include/sysdep/faultinfo.h \
  arch/um/include/choose-mode.h \
  arch/um/include/skas_ptregs.h \
  arch/um/include/user_constants.h \
  include/asm/ptrace-generic.h \
  include/asm/arch/ptrace.h \
    $(wildcard include/config/frame/pointer.h) \
  include/asm/vm86.h \
  include/asm/arch/vm86.h \
    $(wildcard include/config/vm86.h) \
  arch/um/include/choose-mode.h \
  arch/um/include/registers.h \
  arch/um/include/sysdep/ptrace.h \
  include/linux/linkage.h \
  include/asm/linkage.h \
    $(wildcard include/config/gprof.h) \
  include/asm/arch/linkage.h \
    $(wildcard include/config/x86/alignment/16.h) \
  include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/spinlock/sleep.h) \
    $(wildcard include/config/printk.h) \
  /usr/lib/gcc/i486-linux-gnu/4.2.4/include/stdarg.h \
  include/asm/bug.h \
  include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
  include/linux/stringify.h \
  include/asm/system.h \
  include/asm/system-generic.h \
  include/asm/arch/system.h \
    $(wildcard include/config/x86/cmpxchg64.h) \
    $(wildcard include/config/x86/cmpxchg.h) \
    $(wildcard include/config/x86/oostore.h) \
  include/asm/segment.h \
  include/asm/cpufeature.h \
  include/asm/arch/cpufeature.h \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  include/linux/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/prove/locking.h) \
  include/linux/list.h \
  include/linux/poison.h \
  include/linux/prefetch.h \
  include/asm/cache.h \
    $(wildcard include/config/uml/x86.h) \
    $(wildcard include/config/x86/l1/cache/shift.h) \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
  include/linux/spinlock_types_up.h \
  include/linux/spinlock_up.h \
  include/linux/spinlock_api_up.h \
  include/asm/atomic.h \
  include/asm/arch/atomic.h \
    $(wildcard include/config/m386.h) \
  include/asm-generic/atomic.h \
  include/asm/param.h \
  include/asm/timex.h \
  include/asm/div64.h \
  include/asm/arch/div64.h \
  include/asm/io.h \
  include/linux/jiffies.h \
  include/linux/calc64.h \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/acpi/hotplug/memory.h) \
    $(wildcard include/config/acpi/hotplug/memory/module.h) \

kernel/time/jiffies.o: $(deps_kernel/time/jiffies.o)

$(deps_kernel/time/jiffies.o):
