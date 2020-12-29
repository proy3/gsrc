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

NAME = libiconv
GARNAME = libiconv
GARVERSION = 1.14
HOME_URL = http://www.gnu.org/software/libiconv/
DESCRIPTION = Character set conversion library
define BLURB
libiconv provides an implementation of the iconv function for systems
that lack it.  iconv is used to convert between character encodings
in a program.  It supports a wide variety of different encodings.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS = 

######################################################################

include ../../gar.lib/auto.mk
include config.mk

pre-build:
	exec sed -i -e '/gets is a security/d' $(WORKSRC)/srclib/stdio.in.h
	$(MAKECOOKIE)
