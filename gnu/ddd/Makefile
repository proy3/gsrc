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

NAME = DDD
GARNAME = ddd
GARVERSION = 3.3.12
HOME_URL = http://www.gnu.org/software/ddd/
DESCRIPTION = Graphical front-end for GDB and other debuggers
define BLURB
GNU DDD, the Data Display Debugger, is a graphical front-end for
command-line debuggers.  Many back-end debuggers are supported, notably
the GNU debugger, GDB.  In addition to usual debugging features
such as viewing the source files, DDD has additional graphical,
interactive features to aid in debugging.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-include-cstdio.diff
INFO_FILES = $(GARNAME).info $(GARNAME)-themes.info

BUILDDEPS =
LIBDEPS = ncurses readline

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
