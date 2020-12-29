# Copyright © 2013, 2014 Brandon Invergo <brandon@invergo.net>
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

NAME = Tar
GARNAME = tar
GARVERSION = 1.28
HOME_URL = http://www.gnu.org/software/tar/
DESCRIPTION = Managing tar archives
define BLURB
Tar provides the ability to create tar archives, as well as the
ability to extract, update or list files in an existing archive.  It
is useful for combining many files into one larger file, while
maintaining directory structure and file information such as
permissions and creation/modification dates.  GNU tar offers many
extensions over the standard utility.
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
