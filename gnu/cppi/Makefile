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

NAME = Cppi
GARNAME = cppi
GARVERSION = 1.18
HOME_URL = http://www.gnu.org/software/cppi
DESCRIPTION = Indent C preprocessor directives to reflect nesting and more
define BLURB
GNU Cppi processes C source code files to properly indent the
preprocessor directives to reflect their nesting.  It also performs
other standardizations, such as correcting the number of spaces
between directives and the text following them.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = cppi/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig

EXTRACTDEPS = xz
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk
