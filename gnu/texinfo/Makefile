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

NAME = Texinfo
GARNAME = texinfo
GARVERSION = 5.2
RELEASE =
HOME_URL = http://www.gnu.org/software/texinfo/
DESCRIPTION = The GNU documentation format
define BLURB
Texinfo is the official documentation format of the GNU project.  It
uses a single source file using explicit commands to
produce a final document in any of several supported output formats,
such as HTML or PDF.  This package includes both the tools necessary
to produce Info documents from their source and the
command-line Info reader.  The emphasis of the language is on
expressing the content semantically, avoiding physical markup commands.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME)$(RELEASE).tar.gz
SIGFILES = $(DISTNAME)$(RELEASE).tar.gz.sig
INFO_FILES = info-stnd.info info.info texinfo.info

BUILDDEPS = ncurses
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
