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

NAME = Psychosynth
GARNAME = psychosynth
GARVERSION = 0.3.0
HOME_URL = http://www.gnu.org/software/psychosynth/
DESCRIPTION = Interactive software synthesizer
define BLURB
GNU Psychosynth is an interactive, modular soft-synth.  It emulates a 3D
surface on which modules are placed and manipulated, generating and
altering music.  Psychosynth consists of a C++ library, a 3D
interface and a command-line interface.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-boost-linking.diff

BUILDDEPS =
LIBDEPS = boost soundtouch

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --with-boost=$(prefix) \
		  --with-boost-libdir=$(prefix)/lib
