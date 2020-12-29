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

NAME = GNU fdisk
GARNAME = fdisk
UPSTREAMNAME = gnufdisk
GARVERSION = 2.0.0a1
HOME_URL = http://www.gnu.org/software/fdisk/
DESCRIPTION = Low-level disk partitioning and formatting
define BLURB
GNU fdisk provides a GNU version of the common disk partitioning tool
fdisk.  fdisk is used for the creation and manipulation of disk
partition tables, and it understands a variety of different formats.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-add-info-dir-entry.diff
INFO_FILES = $(UPSTREAMNAME)

BUILDDEPS =  gettext
LIBDEPS = libtool ncurses e2fsprogs parted guile

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

# Due to an error in the build process, making version 2.0.0a1 first
# depends on making version 2.0.0a

pre-fetch:
	$(MAKE) -f Makefile-2.0.0a clean makesum install
	$(MAKECOOKIE)

pre-checksum:
	$(MAKE) makesum
	$(MAKECOOKIE)
