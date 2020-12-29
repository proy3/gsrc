# Copyright © 2013 Brandon Invergo <brandon@invergo.net>
#
# This file is part of GSRC.
#
# GSRC is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# GSRC is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
# License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GSRC.  If not, see <http://www.gnu.org/licenses/>.

NAME = guile-clutter
GARNAME = guile-clutter
GARVERSION = 1.10.0
HOME_URL = http://www.gnu.org/software/guile-gnome/
DESCRIPTION = A Guile interface to the Clutter library
define BLURB

endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = guile-gnome/$(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = guile-gnome-clutter.info

BUILDDEPS =
LIBDEPS = guile clutter guile-gnome-platform guile-cairo g-wrap

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += CLUTTER_CFLAGS="-I$(prefix)/include/clutter-1.0/" \
		  CLUTTER_LIBS="-lclutter-1.0" \
		  CFLAGS="-g -O2 -I$(prefix)/include -I$(prefix)/include/cairo \
			  -I$(prefix)/include/cogl -I$(prefix)/include/pango-1.0 \
			  -I$(prefix)/include/atk-1.0 -I$(prefix)/include/json-glib-1.0 \
			  -I$(prefix)/include/guile-cairo"
