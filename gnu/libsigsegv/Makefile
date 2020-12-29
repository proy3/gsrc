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

NAME = libsigsegv
GARNAME = libsigsegv
GARVERSION = 2.10
HOME_URL = http://www.gnu.org/software/libsigsegv/
DESCRIPTION = Library for handling page faults
define BLURB
GNU libsigsegv is a library to handle page faults, which occur when a
program tries to access an unavailable region of memory, in user
mode.  By catching and handling page faults, the program can
implement pageable virtual memory, stack overflow handlers, and so
on.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES =

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk
