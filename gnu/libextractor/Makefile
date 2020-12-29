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

NAME = Libextractor
GARNAME = libextractor
GARVERSION = 1.3
HOME_URL = http://www.gnu.org/software/libextractor/
DESCRIPTION = Library to extract meta-data from media files
define BLURB
GNU libextractor is a library for extracting metadata from files.  It
supports a very large number of file formats, including audio files,
document files, and archive files.  Each file format is implemented
as a plugin, so new formats can be added easily.  The package also
contains a command-line tool to extract metadata from a file and
print the results.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = libtool glib


######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-libiconv-prefix=$(prefix) \
				  --with-libintl-prefix=$(prefix)
