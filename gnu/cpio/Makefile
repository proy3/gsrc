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

NAME = Cpio
GARNAME = cpio
GARVERSION = 2.11
HOME_URL = http://www.gnu.org/software/cpio/
DESCRIPTION = Manage cpio and tar file archives
define BLURB
GNU cpio copies files into or out of cpio or tar archives.
Indeed, many formats are supported, including legacy formats.  The
format is determined automatically by the program and is handled
appropriately.  Furthermore, the location of the archive is not
important.  It can be another file on the drive, a tape, or data on a
pipe.
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
include ../../gar.lib/info.mk
include config.mk

pre-configure:
	sed -i -e '/gets is a security/d' $(WORKSRC)/gnu/stdio.in.h
	$(MAKECOOKIE)
