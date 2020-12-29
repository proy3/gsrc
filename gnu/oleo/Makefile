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

NAME = Oleo
GARNAME = oleo
GARVERSION = 1.99.16
HOME_URL = http://www.gnu.org/software/oleo/
DESCRIPTION = Spreadsheet for both terminal and graphical interfaces
define BLURB
GNU Oleo is a spreadsheet program.  It offers both a terminal interface
and a LessTif-based graphical user interface.  It features familiar,
Emacs-like keybindings.  It supports many standard spreadsheet
features such as macros and functions.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-debian-patches.diff


BUILDDEPS =
LIBDEPS = ncurses gettext

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
