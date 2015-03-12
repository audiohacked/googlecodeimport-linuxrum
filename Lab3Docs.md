Corey Brown
Sean Nelson
Andrew Murtland

Introduction

In this lab, we implemented many different things. We had to implement a Fair-share group scheduling which is scheduling strategy for computer operating systems in which the CPU usage is equally distributed among system task groups, as opposed to equal distribution among tasks.


1.We needed a mechanism that keeps track of how many groups are active.

2.We needed to modify scheduler() to include a conditional that used our scheduling method if activated by the program.

The function “asmlinkage void sched schedule(void)” is located at line 4440 in kernel version 2.6.28.8 – this is the main scheduler function. schedule() uses a run queue (rq), which is used to implement round robin scheduling.

Detailed explanation of what schedule() does:


---

1.schedule() disables pre-emption and gets the rq from the cpu.

2.Not too sure what rcu\_qsctr\_inc does, except it's passed the cpu, is located in rcupreempt.h, and increments the sched\_qs of the rcu\_dyntick\_sched struct

3.It then sets the current process to be prev, switch\_count to prev->nivcsw (the number of context switches for that process), and calls release\_kernel\_lock(prev)

4.It then calls schedule\_debug, which, according to the comments, does “various schedule()-time debugging checks and statistics”, and is passed prev

5.schedule() uses “spin\_lock\_irq(&rq->lock);” to turn off interrupts. It then calls update\_rq\_clock(rq) @ line 641, which in turn sets rq->clock equal to sched\_clock\_cpu(cpu\_of(rq)), which is in sched\_clock.c @ line 149, and which apparently further disables interrupts using another spin lock, and calls update\_sched\_clock(struct sched\_clock\_data **scd, u64 now) @ line 109 in the same file – this is the function that actually increments the clock.**

6.Everything goes back to the main schedule() function, which uses a chain of functions, starting with clear\_tsk\_need\_resched to clear a bit in the prev thread (the thread that's about to go to the end of the line).

7.The kernel then deactivates the task (lines 4467 - 4472), puts the task prev onto the end of rq using put\_prev\_task(rq, prev), and uses pick\_next\_task(rq, prev) to get the next task.

8.It then increments rq->switches, sets the current task to next, and increments switch\_count

9.finally, it switches context, which should start running next, and, according to the comment, also “unlocks the rq” (line 4493)

10.it may slip through to a few gotos, which skip back to previous steps

---


3.Description of scheduler\_tick(void)

1.scheduler\_tick first gets the rq from the CPU, and the current task from the rq

2.it then calls sched\_clock\_tick, which is located in sched\_clock.c @ line 196, and sets sched\_clock\_data to the current time

3.scheduler\_tick then turns off interrupts, updates the rq clock and cpu load, and calls task\_tick(rq, curr, 0);

4.it then re-enables interrupts and returns


---

4.effective\_prio() sets a task\_struct's priority to normal if it is not currently a real time priority

5.We needed to modify sched.h to include our scheduler mode

Within sched.h are definitions of each scheduler mode, and a number associated with them. This is so that we can use “sched\_setscheduler(pid\_t pid)” to set the scheduler policy, rather than modifying the scheduler that is in place. As required, we added a “#define SCHED\_FSG” in addition to the pre-existing scheduler modes.

Scheduler
For the scheduler redesign, we decided modify sched.c to use the priorities as part of the different groups. In order to make it easier to see which groups had process's in there Queue we added an array which did not just say how many Queues there where but also how much was in each Queue which is needed in Fair-share group scheduling for its deciding how much time to give each process. This was achieved by adding a new function SCHED\_FSG which was made to do the main parts of this assignment. Inside SCHED\_FSG we decided to use FIFO for the scheduling of the next process to run with in its process group. we could have used RR in place of FIFO but that would have taken longer then FIFO so we decided to use FIFO.

pro/cons
There are a few pros and cons to this approach. One pro is that using the already created priority levels as there groups makes it easier. A con however to reusing them is there maybe so unexpected bugs later.