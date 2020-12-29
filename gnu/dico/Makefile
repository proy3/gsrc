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

NAME = Dico
GARNAME = dico
GARVERSION = 2.2
HOME_URL = http://www.gnu.org/software/dico/
DESCRIPTION = Implementation of DICT server (RFC 2229)
define BLURB
GNU Dico implements a flexible dictionary server and client according
to RFC 2229 (DICT Server).  It is able to access any database
available, regardless of format, thanks to its modular structure.
New modules may be written in C, Guile or Python.  Dico also includes
a command-line client, which may be used to query remote dictionary
databases.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = readline libtool gettext zlib  guile

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-configure:
	sed -i -e '/gets is a security/d' $(WORKSRC)/gnu/stdio.in.h
	$(MAKECOOKIE)
