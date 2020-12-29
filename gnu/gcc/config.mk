## Configuration options for gcc ##

## Note: you must set up your environment (PATH, LDPATH, etc) to
## include GSRC-installed packages in order to install gcc as
## configured below. You can do this easily like so in Bash:
## $ source $(your_gsrc_dir) setup.sh

CONFIGURE_OPTS ?= --enable-__cxa_atexit \
		  --enable-threads=posix \
		  --enable-shared \
		  --enable-languages=c,c++,fortran \
		  --enable-clocale=gnu \
		  --enable-cloog-backend=isl \
		  --disable-bootstrap \
		  --disable-multilib \

BUILD_OPTS ?= 
