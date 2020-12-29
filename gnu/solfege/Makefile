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

NAME = Solfege
GARNAME = solfege
GARVERSION = 3.22.2
HOME_URL = http://www.gnu.org/software/solfege/
DESCRIPTION = Ear training
define BLURB
GNU Solfege is a program for practicing musical ear-training.  With it,
you can practice your recognition of various musical intervals and
chords.  It features a statistics overview so you can monitor your
progress across several sessions.  Solfege is also designed to be
extensible so you can easily write your own lessons.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = txt2man
LIBDEPS = gtk2

######################################################################

include ../../gar.lib/auto.mk
include config.mk
