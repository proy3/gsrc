## Configuration options for linux-libre ##

# Which architecture will you build and install? Defaults to the reported 
# architecture of the GSRC build system (i.e. x86_64)
ARCH ?= $(GARARCH)

# Use parallel build processes?
USE_PARALLEL ?= y

# Which method for configuring? i.e. xconfig, menuconfig, oldconfig, etc.
CONFIGURE_TARGET ?= menuconfig

# Define whatever options you want to send to the Makefile for configuring
CONFIGURE_OPTS ?= 

# Define whatever options you want to send to the Makefile for building
BUILD_OPTS ?=
