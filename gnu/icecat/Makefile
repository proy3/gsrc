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

NAME = IceCat
GARNAME = icecat
GARVERSION = 24.0
HOME_URL = http://www.gnu.org/software/gnuzilla/
DESCRIPTION = Entirely free browser derived from Mozilla Firefox
define BLURB
IceCat is the GNU version of the Firefox browser.  It is entirely
free software, which does not recommend non-free plugins and addons.
It also features built-in privacy-protecting features.
endef

######################################################################

empty:=
space:= $(empty) $(empty)
VERSION_LIST = $(subst .,$(space),$(GARVERSION))
SERIES = $(subst $(space),.,$(word 1,$(VERSION_LIST)))

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = gnuzilla/$(SERIES)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS = glib gtk2 zlib libpng

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --with-glib-prefix=$(prefix) \
		  --with-glib-exec-prefix=$(prefix) \
		  --with-system-zlib=$(prefix) 
