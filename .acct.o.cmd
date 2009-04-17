cmd_kernel/acct.o := gcc -Wp,-MD,kernel/.acct.o.d  -nostdinc -isystem /usr/lib/gcc/i486-linux-gnu/4.2.4/include -D__KERNEL__ -Iinclude  -include include/linux/autoconf.h -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Os  -D__arch_um__ -DSUBARCH=\"i386\" -Iarch/um/include  -I/home/bob/UML/linux-2.6.18.8/arch/um/include/skas -Dvmap=kernel_vmap -Din6addr_loopback=kernel_in6addr_loopback -Derrno=kernel_errno -Dsigprocmask=kernel_sigprocmask -Dmktime=kernel_mktime -fno-unit-at-a-time -U__i386__ -Ui386 -march=i686 -mtune=pentium2 -mtune=generic -mpreferred-stack-boundary=2 -ffreestanding -D_LARGEFILE64_SOURCE -fomit-frame-pointer  -fno-stack-protector -Wdeclaration-after-statement -Wno-pointer-sign    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(acct)"  -D"KBUILD_MODNAME=KBUILD_STR(acct)" -c -o kernel/acct.o kernel/acct.c

deps_kernel/acct.o := \
  kernel/acct.c \
  include/linux/mm.h \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/debug/pagealloc.h) \
  include/linux/sched.h \
    $(wildcard include/config/detect/softlockup.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/pm.h) \
  include/linux/auxvec.h \
  include/asm/auxvec.h \
  include/asm/param.h \
  include/linux/capability.h \
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
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
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
    $(wildcard include/config/trace/irqflags/support.h) \
    $(wildcard include/config/x86.h) \
  include/linux/spinlock_types.h \
  include/linux/lockdep.h \
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
  include/asm/current.h \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/timex.h \
    $(wildcard include/config/time/interpolation.h) \
  include/linux/time.h \
  include/linux/seqlock.h \
  include/asm/timex.h \
  include/linux/jiffies.h \
  include/linux/calc64.h \
  include/asm/div64.h \
  include/asm/arch/div64.h \
  include/linux/rbtree.h \
  include/linux/cpumask.h \
  include/linux/bitmap.h \
  include/linux/string.h \
  include/linux/errno.h \
  include/asm/errno.h \
  include/asm/arch/errno.h \
  include/asm-generic/errno.h \
  include/asm-generic/errno-base.h \
  include/linux/nodemask.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/asm/semaphore.h \
  include/asm/arch/semaphore.h \
  include/linux/wait.h \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/asm/rwsem.h \
  include/asm/arch/rwsem.h \
  include/asm/ptrace.h \
  include/asm/mmu.h \
  arch/um/include/um_mmu.h \
  arch/um/include/choose-mode.h \
  /home/bob/UML/linux-2.6.18.8/arch/um/include/skas/mmu-skas.h \
  include/linux/config.h \
    $(wildcard include/config/h.h) \
  /home/bob/UML/linux-2.6.18.8/arch/um/include/skas/mm_id.h \
  include/asm/ldt.h \
  include/asm/cputime.h \
  include/asm-generic/cputime.h \
  include/linux/smp.h \
  include/linux/sem.h \
    $(wildcard include/config/sysvipc.h) \
  include/linux/ipc.h \
  include/asm/ipcbuf.h \
  include/asm/arch/ipcbuf.h \
  include/asm/sembuf.h \
  include/asm/arch/sembuf.h \
  include/linux/signal.h \
  include/asm/signal.h \
  include/asm/arch/signal.h \
  include/asm-generic/signal.h \
  include/asm/sigcontext.h \
  include/asm/sigcontext-generic.h \
  include/asm/arch/sigcontext.h \
  include/asm/siginfo.h \
  include/asm/arch/siginfo.h \
  include/asm-generic/siginfo.h \
  include/linux/securebits.h \
  include/linux/fs_struct.h \
  include/linux/completion.h \
  include/linux/pid.h \
  include/linux/rcupdate.h \
  include/linux/cache.h \
  include/linux/percpu.h \
  include/linux/slab.h \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/gfp.h \
    $(wildcard include/config/dma/is/dma32.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
  include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
    $(wildcard include/config/acpi/hotplug/memory.h) \
    $(wildcard include/config/acpi/hotplug/memory/module.h) \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  include/linux/notifier.h \
  include/linux/mutex.h \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
  include/asm/topology.h \
  include/asm-generic/topology.h \
  include/linux/kmalloc_sizes.h \
    $(wildcard include/config/large/allocs.h) \
  include/asm/percpu.h \
  include/asm/arch/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  include/linux/futex.h \
    $(wildcard include/config/futex.h) \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/param.h \
  include/linux/resource.h \
  include/asm/resource.h \
  include/asm/arch/resource.h \
  include/asm-generic/resource.h \
  include/linux/timer.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/no/idle/hz.h) \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/aio.h \
  include/linux/workqueue.h \
  include/linux/aio_abi.h \
  include/linux/sysdev.h \
  include/linux/kobject.h \
  include/linux/sysfs.h \
    $(wildcard include/config/sysfs.h) \
  include/linux/kref.h \
  include/linux/pm.h \
  include/linux/prio_tree.h \
  include/linux/fs.h \
    $(wildcard include/config/dnotify.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/inotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
    $(wildcard include/config/security.h) \
  include/linux/limits.h \
  include/linux/ioctl.h \
  include/asm/ioctl.h \
  include/asm/arch/ioctl.h \
  include/asm-generic/ioctl.h \
  include/linux/kdev_t.h \
  include/linux/dcache.h \
    $(wildcard include/config/profiling.h) \
  include/linux/stat.h \
  include/asm/stat.h \
  include/asm/arch/stat.h \
  include/linux/radix-tree.h \
  include/linux/quota.h \
  include/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/nfs_fs_i.h \
  include/linux/nfs.h \
  include/linux/sunrpc/msg_prot.h \
  include/linux/fcntl.h \
  include/asm/fcntl.h \
  include/asm/arch/fcntl.h \
  include/asm-generic/fcntl.h \
  include/linux/err.h \
  include/asm/pgtable.h \
  include/asm/fixmap.h \
  include/asm/kmap_types.h \
  include/asm/archparam.h \
  include/asm/elf.h \
  include/asm/user.h \
  include/asm/pgtable-2level.h \
  include/asm-generic/pgtable-nopmd.h \
  include/asm-generic/pgtable-nopud.h \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/s390.h) \
    $(wildcard include/config/swap.h) \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/dma/is/normal.h) \
  include/linux/config.h \
  include/linux/acct.h \
    $(wildcard include/config/m68k.h) \
    $(wildcard include/config/bsd/process/acct/v3.h) \
  include/linux/file.h \
  include/linux/tty.h \
    $(wildcard include/config/legacy/pty/count.h) \
  include/linux/major.h \
  include/linux/termios.h \
  include/asm/termios.h \
  include/asm/arch/termios.h \
  include/asm/termbits.h \
  include/asm/arch/termbits.h \
  include/asm/ioctls.h \
  include/asm/arch/ioctls.h \
  include/linux/module.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/kallsyms.h) \
  include/linux/kmod.h \
    $(wildcard include/config/kmod.h) \
  include/linux/elf.h \
  include/linux/elf-em.h \
  include/linux/moduleparam.h \
  include/asm/local.h \
  include/asm/arch/local.h \
  include/asm/module.h \
  include/linux/tty_driver.h \
  include/linux/cdev.h \
  include/linux/tty_ldisc.h \
  include/linux/security.h \
    $(wildcard include/config/security/network.h) \
    $(wildcard include/config/security/network/xfrm.h) \
  include/linux/binfmts.h \
  include/linux/shm.h \
  include/asm/shmparam.h \
  include/asm/arch/shmparam.h \
  include/asm/shmbuf.h \
  include/asm/arch/shmbuf.h \
  include/linux/msg.h \
  include/asm/msgbuf.h \
  include/asm/arch/msgbuf.h \
  include/linux/key.h \
  include/linux/vfs.h \
  include/linux/statfs.h \
  include/asm/statfs.h \
  include/asm/arch/statfs.h \
  include/asm-generic/statfs.h \
  include/linux/times.h \
  include/linux/syscalls.h \
    $(wildcard include/config/v850.h) \
  include/linux/mount.h \
  include/asm/uaccess.h \
  arch/um/include/um_uaccess.h \
  /home/bob/UML/linux-2.6.18.8/arch/um/include/skas/uaccess-skas.h \
  include/asm/fixmap.h \
  include/linux/blkdev.h \
  include/linux/genhd.h \
    $(wildcard include/config/solaris/x86/partition.h) \
    $(wildcard include/config/bsd/disklabel.h) \
    $(wildcard include/config/unixware/disklabel.h) \
    $(wildcard include/config/minix/subpartition.h) \
  include/linux/device.h \
  include/linux/ioport.h \
  include/linux/klist.h \
  include/linux/pagemap.h \
  include/linux/highmem.h \
  include/asm/cacheflush.h \
  include/asm/arch/cacheflush.h \
    $(wildcard include/config/debug/rodata.h) \
  include/linux/backing-dev.h \
  include/linux/mempool.h \
  include/linux/bio.h \
  include/linux/ioprio.h \
  include/asm/io.h \
  include/asm/scatterlist.h \
  include/asm/arch/scatterlist.h \
  include/linux/elevator.h \

kernel/acct.o: $(deps_kernel/acct.o)

$(deps_kernel/acct.o):
