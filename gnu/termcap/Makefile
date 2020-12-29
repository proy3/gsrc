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

NAME = Termcap
GARNAME = termcap
GARVERSION = 1.3.1
HOME_URL = http://www.gnu.org/software/termcap/
DESCRIPTION = Terminal-independent display support
define BLURB
GNU termcap is a library and a database that are used to enable the use
of display terminals in a terminal-independent manner.  The database
describes the capabilities of many different display terminals.  The
library can then adapt generalized instructions given by a program to
the specific capabilities of the display terminal as found in the
database.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/

DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = fix-install.diff

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += oldincludedir=""
