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

NAME = LilyPond
GARNAME = lilypond
GARVERSION = 2.19.1
HOME_URL = http://www.gnu.org/software/lilypond
DESCRIPTION = Music typesetting
define BLURB
GNU LilyPond is a music typesetter, which produces high-quality sheet
music.  Music is input in a text file containing control sequences
which are interpreted by LilyPond to produce the final document.  It
is extendable with Guile.
endef

######################################################################

empty:=
space:= $(empty) $(empty)
VERSION_LIST = $(subst .,$(space),$(GARVERSION))
SERIES = $(subst $(space),.,$(wordlist 1,2,$(VERSION_LIST)))

MASTER_SITES = http://download.linuxaudio.org/
MASTER_SUBDIR = lilypond/sources/v$(SERIES)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =

BUILDDEPS = ghostscript texinfo guile bison pkg-config fontforge	\
	    python2 freetype2 pango fontconfig help2man texlive texinfo	\
	    t1utils imagemagick flex perl db2latex netpbm
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk
