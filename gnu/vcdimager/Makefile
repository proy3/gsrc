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

NAME = VCDImager
GARNAME = vcdimager
GARVERSION = 0.7.24
HOME_URL = http://www.gnu.org/software/vcdimager/
DESCRIPTION = Authoring, disassembling and analyzing (super and) video CDs
define BLURB
GNU VCDImager is a suite of programs for working with Video CDs
and Super Video CDs.  It can be used for authoring, disassembling and
analyzing discs.  It supports full playback control, segment play
items, automatic padding of MPEG streams on the fly, and extraction of
Video CDs into files.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = vcd-info.info vcdimager.info vcdxrip.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
