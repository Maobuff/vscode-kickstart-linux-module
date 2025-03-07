obj-m += hello_world.o

KERNEL_DIR ?= ../kernel
ARCH = arm
CROSS_COMPILE = arm-none-eabi-

all:
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KERNEL_DIR) M=$(PWD) modules

clean:
	make -C $(KERNEL_DIR) M=$(PWD) clean