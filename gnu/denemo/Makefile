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

NAME = Denemo
GARNAME = denemo
GARVERSION = 1.1.8
HOME_URL = http://www.gnu.org/software/denemo
DESCRIPTION = Graphical music notation, front-end to GNU Lilypond
define BLURB
GNU Denemo is a music notation editor that provides a convenient
interface to the powerful music engraving program Lilypond.  Music
can be typed in using the computer keyboard, played in using a MIDI
keyboard, or even input via a microphone connected to the sound card.
The final product is publication-quality music notation that is
continuously generated in the background while you work.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = gtksourceview gtk lilypond #evince

######################################################################

include ../../gar.lib/auto.mk
include config.mk
