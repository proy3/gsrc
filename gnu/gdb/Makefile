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

NAME = GDB
GARNAME = gdb
GARVERSION = 7.8
HOME_URL = http://www.gnu.org/software/gdb/
DESCRIPTION = The GNU debugger
define BLURB
GDB is the GNU debugger.  With it, you can monitor what a program is
doing while it runs or what it was doing just before a crash.  It
allows you to specify the runtime conditions, to define breakpoints,
and to change how the program is running to try to fix bugs.  It can
be used to debug programs written in C, C++, Ada, Objective-C, Pascal
and more.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME)$(MINOR_UPDATE).tar.gz
SIGFILES = $(DISTNAME)$(MINOR_UPDATE).tar.gz.sig
INFO_FILES = $(GARNAME).info annotate.info bfd.info gdbint.info \
	stabs.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
