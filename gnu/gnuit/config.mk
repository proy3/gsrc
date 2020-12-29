## Configuration options for gnuit ##

CONFIGURE_OPTS ?= 
BUILD_OPTS ?=

# gnuit installs a program called `git', which will cause problems
# for people who use the revision control system of the same name.
# gnuit's `git' is just a link to `gitfm' so we can avoid installing
# it.
COLLISIONS += bin/git
