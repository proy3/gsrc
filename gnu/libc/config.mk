## Configuration options for libc ##

CONFIGURE_OPTS ?= 
BUILD_OPTS ?=

# Installing glibc via GSRC when there is already a system-installed
# copy causes locale problems when your GSRC directory is added to
# your PATH. The easiest solution is to just prevent installing them.
# If you're using GSRC to install programs system-wide and you intend
# for this to be the main glibc for the system, you may remove this
# line.
COLLISIONS += bin/locale bin/localedef sbin/locale-gen
