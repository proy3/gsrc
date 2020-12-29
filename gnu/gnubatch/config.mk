## Configuration options for gnubatch ##

## Note, gnuspool was designed to be installed and used in a system-wide manner.
## Several files are given particular permissions. It is expected that unless
## you use the default settings, the software will probably not function as
## expected. As a result, to properly build and use this software via GSRC, you
## will likely need root priveledges.

CONFIGURE_OPTS ?= --enable-sharedlibs
BUILD_OPTS ?=

# gnubatch requires that you set a batch user (default gnubatch). Only changes in
# this variable are supported
BATCHUSR = gnubatch
