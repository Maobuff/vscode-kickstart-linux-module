VS Code kickstart for Linux module development
==============================================

###
How to start:

- Build kernel to generate include files
- Install C/C++ Clang-Format Makefile Tools extensions
- Edit .vscode/c_cpp_properties.json
```
...
//path to the kernel
"kernelFolder": "${workspaceFolder}/../kernel"
...
//compiler used to build the kernel
"compilerPath": "/usr/bin/arm-none-eabi-gcc",
...
//host-compiler-target
"intelliSenseMode": "linux-gcc-arm",
...
```
- Edit Makefile
```
//path to the kernel
KERNEL_DIR ?= ../kernel
//target architecture
ARCH = arm
//compiler to be used to build the module
CROSS_COMPILE = arm-none-eabi-
```
- Copy .clang-format from kernel folder