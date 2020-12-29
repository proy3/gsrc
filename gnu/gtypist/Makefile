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

NAME = Typist
GARNAME = gtypist
GARVERSION = 2.9.5
HOME_URL = http://www.gnu.org/software/gtypist/
DESCRIPTION = Typing tutor
define BLURB
GNU Typist is a universal typing tutor.  It can be used to learn and
practice touch-typing.  Several tutorials are included; in addition
to tutorials for the standard QWERTY layout, there are also tutorials
for the alternative layouts Dvorak and Colemak, as well as for the
numpad.  Tutorials are primarily in English, however some in other
languages are provided.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(GARNAME).info $(GARNAME).cs.info $(GARNAME).es.info

BUILDDEPS =
LIBDEPS = ncurses

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
