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

NAME = patch
GARNAME = patch
GARVERSION = 2.7.1
HOME_URL = http://www.gnu.org/software/patch
DESCRIPTION = Apply differences to originals, with optional backups
define BLURB
Patch is a program that applies changes to files based on differences
laid out as by the program "diff".  The changes may be applied to one or
more files depending on the contents of the diff file.  It accepts
several different diff formats.  It may also be used to revert
previously applied differences.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig

BUILDDEPS = 
TESTDEPS = ed
LIBDEPS = 

######################################################################

include ../../gar.lib/auto.mk
include config.mk
