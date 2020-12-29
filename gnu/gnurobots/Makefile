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

NAME = Robots
GARNAME = gnurobots
GARVERSION = 1.2.0
HOME_URL = http://www.gnu.org/software/gnurobots/
DESCRIPTION = Program a little robot and watch him explore a world
define BLURB
GNU Robots is a game in which you program a robot to explore a world
full of enemies that can hurt it, obstacles and food to be eaten.
The goal of the game is to stay alive and collect prizes.  The robot
program conveniently may be written in a plain text file in the
Scheme programming language.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = fix-build.diff

BUILDDEPS = 
LIBDEPS = guile glib readline

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += READLINE_CFLAGS="-I$(prefix)/include/readline"
