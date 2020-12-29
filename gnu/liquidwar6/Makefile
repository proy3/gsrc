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

NAME = Liquid War 6
GARNAME = liquidwar6
GARVERSION = 0.4.3681
HOME_URL = http://www.gnu.org/software/liquidwar6/
DESCRIPTION = Multiplayer wargame where your army is a blob of liquid
define BLURB
GNU Liquid War 6 is a fast-paced, unique action game.  Each player
controls a blob of liquid with the goal of conquering the entire map.
It has 13 levels by default and over 100 more with a bonus pack; new
levels can be easily created using simple image files.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = guile gmp gc libtool zlib libpng libsdl libsdl_image	\
          libsdl_ttf libsdl_mixer expat libjpeg

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
