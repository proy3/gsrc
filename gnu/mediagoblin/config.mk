## Configuration options for mediagoblin ##

# If you want to install to a Python virtualenv, you can do so here, but be sure to 
# set a very explicit prefix, otherwise it will just install directly into your gsrc 
# prefix, which would defeat the purpose.
CONFIGURE_OPTS ?= --with-virtualenv --prefix=$(prefix)/www/mediagoblin.example.com 
BUILD_OPTS ?=
