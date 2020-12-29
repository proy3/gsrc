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

NAME = Binutils
GARNAME = binutils
GARVERSION = 2.24
HOME_URL = http://www.gnu.org/software/binutils/
DESCRIPTION = Binary utilities: bfd gas gprof ld
define BLURB
GNU Binutils is a collection of tools for working with binary files.
Perhaps the most notable are "ld", a linker, and "as", an assembler.
Other tools include programs to display binary profiling
information, list the strings in a binary file,
and utilities for working with archives.  The "bfd" library for
working with executable and object formats is also included.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME)$(MINOR_UPDATE).tar.gz
SIGFILES = $(DISTNAME)$(MINOR_UPDATE).tar.gz.sig
#PATCHFILES = $(DISTNAME)-fix-texinfo.diff
WORKOBJ = $(WORKDIR)/build-$(GARVERSION)/
INFO_FILES = as.info bfd.info binutils.info gprof.info ld.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
