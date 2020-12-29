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

NAME = Ignuit
GARNAME = ignuit
GARVERSION = 2.20.0
HOME_URL = http://www.gnu.org/software/ignuit/
DESCRIPTION = Memorization aid based on Leitner flashcards
define BLURB
Ignuit is a tool for aiding in the memorization of new information
based on the Leitner flashcard system.  In this system, new cards are
studied with decreasing frequency as they grow older, unless you
encounter difficulty memorizing them, after which you encounter them
more often.  Cards can include embedded audio, images and
mathematical formulae and a card collection can be exported to
several formats.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
