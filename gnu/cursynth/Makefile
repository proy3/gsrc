# Copyright © 2014 Brandon Invergo <brandon@invergo.net>
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

NAME = Cursynth
GARNAME = cursynth
GARVERSION = 1.5
HOME_URL = http://www.gnu.org/software/cursynth/
DESCRIPTION = Polyphonic and MIDI subtractive music synthesizer using curses
define BLURB
GNU cursynth is a polyphonic synthesizer that runs graphically
in the terminal.  It is built on a full-featured subtractive synthesis
engine.  Notes and parameter changes may be entered via MIDI or the
computer keyboard.
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
include config.mk
