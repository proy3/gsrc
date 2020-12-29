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

NAME = Diffutils
GARNAME = diffutils
GARVERSION = 3.3
HOME_URL = http://www.gnu.org/software/diffutils/diffutils.html/
DESCRIPTION = Comparing and merging files
define BLURB
GNU Diffutils is a package containing tools for finding the
differences between files.  The "diff" command is used to show how two
files differ, while "cmp" shows the offsets and line numbers where they
differ.  "diff3" allows you to compare three files.  Finally, "sdiff"
offers an interactive means to merge two files.
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

pre-build:
	exec sed -i -e '/gets is a security/d' $(WORKSRC)/lib/stdio.in.h
	$(MAKECOOKIE)
