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

NAME = spell
GARNAME = spell
GARVERSION = 1.1
HOME_URL = http://www.gnu.org/software/spell/
DESCRIPTION = Spell checking
define BLURB
Spell is a command-line spell-checking program.  It reads through a
text input and prints each misspelled word on a line of its own.  It
is implemented as a wrapper for GNU aspell or ispell.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-fix-install.diff

BUILDDEPS =
LIBDEPS = aspell

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
