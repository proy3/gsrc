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

NAME = Backgammon
GARNAME = gnubg
GARVERSION = 1.03.001
HOME_URL = http://www.gnu.org/software/gnubg
DESCRIPTION = Backgammon game
define BLURB
The GNU backgammon application can be used for playing, analyzing
and teaching the game.  It has an advanced evaluation engine based on
artificial neural networks suitable for both beginners and advanced
players.  In addition to a command-line interface, it also features an
attractive, 3D representation of the playing board.
endef

######################################################################

MASTER_SITES = http://files.gnubg.org/
MASTER_SUBDIR = media/sources/
DISTFILES = $(GARNAME)-release-$(GARVERSION)-sources.tar.gz
SIGFILES =
INSTALL_SCRIPTS += $(WORKOBJ)/Makefile-DESTDIR info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

install-info:
	$(INSTALL_INFO) $(WORKSRC)/doc/$(GARNAME).info
	$(MAKECOOKIE)
