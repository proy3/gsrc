## Configuration options for lilypond ##

# Lilypond only supports Guile 1.8, which is not provided by GSRC.  You must
# supply the location of guile-config from Guile 1.8 below.
CONFIGURE_OPTS ?= TEXI2HTML=/usr/bin/texi2any GUILE_CONFIG=/usr/bin/guile-config1.8
BUILD_OPTS ?=
