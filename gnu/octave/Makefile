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

NAME = Octave
GARNAME = octave
GARVERSION = 3.8.2
HOME_URL = http://www.gnu.org/software/octave/
DESCRIPTION = High-level language for numerical computation
define BLURB
GNU Octave is a high-level interpreted language that is specialized
for numerical computations.  It can be used for both linear and
non-linear applications and it provides great support for visualizing
results.  Work may be performed both at the interactive command-line
as well as via script files.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(GARNAME).info OctaveFAQ.info liboctave.info

BUILDDEPS =
LIBDEPS = readline

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
