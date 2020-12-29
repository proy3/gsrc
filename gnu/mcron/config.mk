## Configuration options for mcron ##

CONFIGURE_OPTS ?= 
BUILD_OPTS ?=

# Normally mcron installs several files under the /var and /tmp directories. If 
# you do not have root permissions, you can choose to install them into a
# different root directory. For example, to install them under your GSRC 
# directory, set sysroot to $(prefix), so if your GSRC directory is ~/gnu,
# they will be installed to ~/gnu/var and ~/gnu/tmp. If sysroot is 
# empty, they will be installed to /var and /tmp
sysroot ?= 
