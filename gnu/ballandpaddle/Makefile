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

NAME = Ball and Paddle
GARNAME = ballandpaddle
GARVERSION = 0.8.1
HOME_URL = http://www.gnu.org/software/ballandpaddle/
DESCRIPTION = Ball and paddle game extensible with Guile
define BLURB
Ball and Paddle is a classic arcade game in which you use a paddle at
the bottom of the screen to bounce a ball against bricks in the upper
region, eliminating the bricks as they are hit.  As a novel twist,
events and attributes of all the objects (bricks, ball, etc.) may be
scripted with GNU Guile.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = ballandpaddle/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = fix-build.diff

BUILDDEPS = guile gettext
LIBDEPS = libsdl libsdl_image libsdl_mixer libsdl_ttf

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-sdl-prefix=$(prefix)
