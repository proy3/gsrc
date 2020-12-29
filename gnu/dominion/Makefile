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

NAME = Dominion
GARNAME = dominion
GARVERSION = 2.8.2
HOME_URL = http://www.gnu.org/software/dominion/
DESCRIPTION = Multi-player world simulation and role-playing game
define BLURB
GNU Dominion is a multi-player world simulation game.  In it,
each player rules a nation and must maintain their nation in the face
of competition from the other players.  Players must make political,
economical, military and diplomatic decisions in order for their
nations to survive.  This game is intended to be played by players all
with access to the same computer system.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-upstream-fixes.diff \
	     $(DISTNAME)-remove-new-world-deps.diff
INSTALL_SCRIPTS = $(WORKSRC)/Makefile new-world

BUILDDEPS =
LIBDEPS = ncurses

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
