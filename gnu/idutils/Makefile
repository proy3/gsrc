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

NAME = ID Utils
GARNAME = idutils
GARVERSION = 4.6
HOME_URL = http://www.gnu.org/software/idutils/
DESCRIPTION = Identifier database utilities
define BLURB
The GNU idutils package includes tools to create an index of
textual tokens used in a list of file names and then to query that
index.  Thus, it allows the user to, for example, find all the uses of
a particular function in a large programming project.  In addition to
handling textual tokens, it can also handle numeric constants and the
contents of character strings.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/

DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-configure:
	sed -i -e '/gets is a security/d' $(WORKSRC)/lib/stdio.in.h
	$(MAKECOOKIE)
