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

NAME = bc
GARNAME = bc
GARVERSION = 1.06
HOME_URL = http://www.gnu.org/software/bc/
DESCRIPTION = Arbitrary precision numeric processing language
define BLURB
bc is an arbitrary precision numeric processing language.  It
includes an interactive environment for evaluating mathematical
statements.  Its syntax is similar to that of C, so basic usage is
familiar.  It also includes "dc", a reverse-polish calculator.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = bc/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-bc-add-info-dir-entry.diff
INFO_FILES = bc.info dc.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
