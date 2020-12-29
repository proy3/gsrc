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

NAME = Gforth
GARNAME = gforth
GARVERSION = 0.7.3
HOME_URL = http://www.gnu.org/software/gforth/
DESCRIPTION = Forth interpreter
define BLURB
Gforth is a fast and portable implementation of the ANSI Forth
language.  It includes an editing mode for Emacs and an interpreter
featuring completion and history.  A generic virtual machine
environment, vmgen, is also included.
endef

######################################################################

MASTER_SITES = http://www.complang.tuwien.ac.at/forth/
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(GARNAME).info vmgen.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += CFLAGS="-std=gnu99"
