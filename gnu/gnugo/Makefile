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

NAME = Go
GARNAME = gnugo
GARVERSION = 3.8
HOME_URL = http://www.gnu.org/software/gnugo/
DESCRIPTION = Play the game of Go
define BLURB
GNU Go is a program that plays the game of Go, in which players place
stones on a grid to form territory or capture other stones.  While it
can be played directly from the terminal, rendered in ASCII
characters, it is also possible to play GNU Go with 3rd party
graphical interfaces or even in Emacs.  It supports the standard
game storage format (SGF, Smart Game Format) and inter-process
communication format (GMP, Go Modem Protocol).
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = ncurses

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
