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

NAME = dbm
GARNAME = gdbm
GARVERSION = 1.11
HOME_URL = http://www.gnu.org/software/gdbm/
DESCRIPTION = Hash library of database functions compatible with traditional dbm
define BLURB
GDBM is a library for manipulating hashed databases.  It is used to
store key/value pairs in a file in a manner similar to the Unix dbm
library and provides interfaces to the traditional file format.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
