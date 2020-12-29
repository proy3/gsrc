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

NAME = Compact Disc Input and Control Library
GARNAME = libcdio
GARVERSION = 0.92
HOME_URL = http://www.gnu.org/software/libcdio/
DESCRIPTION = CD Input and Control library
define BLURB
The GNU Compact Disc Input and Control Library (libcdio) is a library
for CD-ROM and CD image file access.  It allows the developer to add
CD access to an application without having to worry about the OS- and
device-dependent properties of CD-ROM or the specific details of CD
image formats.  It includes pycdio, a Python interface to libcdio, and
libcdio-paranoia, a library providing jitter-free and
error-free audio extraction from CDs.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = ncurses help2man
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
