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

NAME = Fontutils
GARNAME = fontutils
GARVERSION = 0.7
HOME_URL = http://www.gnu.org/software/fontutils/
DESCRIPTION = Scanned image, bitmap, outline font manipulation
define BLURB
GNU Fontutils is a collection of programs for handling fonts.
Bitmaps can be extracted from scanned images of characters, edited,
and converted into outline fonts.  In general, Fontutils supports the
font formats supported by the TeX typesetting environment, including
PostScript Type 1 fonts.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-fix-build.diff $(DISTNAME)-add-info-dir-entry.diff
INFO_FILES = fontu.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

PATCHOPTS = -p2
CONFIGURE_OPTS += --exec-prefix=$(prefix)
