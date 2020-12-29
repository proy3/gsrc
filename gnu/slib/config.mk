## Configuration options for slib ##

# Choose the targets you want to install SLIB for. `system' installs SLIB to 
# $(prefix)/lib/slib for general use with Scheme interpreters; `guile' installs
# it to $(prefix)/share/guile/slib for use with Guile

INSTALL_TARGETS = system guile

CONFIGURE_OPTS ?= 
BUILD_OPTS ?=
