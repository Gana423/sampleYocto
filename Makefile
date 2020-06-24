#obj-m := hello1.o
obj-m += hello2.o
#obj-m += hello3.o
#obj-m += hello4.o
#obj-m += hello5.o
#hello5-objs := hello-first.o hello-second.o

all:

#	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) modules
	make -C /lib/modules/4.15.0-88-generic/build M=$(shell pwd) modules
#	make -C /usr/src/linux-2.6.30 SUBDIRS=`pwd` modules

clean:

	rm -f *.o *.ko *.mod.c
