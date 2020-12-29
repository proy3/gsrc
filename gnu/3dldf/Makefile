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

NAME = 3DLDF
GARNAME = 3dldf
UPSTREAMNAME = 3DLDF
GARVERSION = 2.0.3
HOME_URL = http://www.gnu.org/software/3dldf/
DESCRIPTION = 3D drawing with MetaPost output
define BLURB
GNU 3DLDF supports 3D drawing with output to the MetaPost format via
a language similar to Metafont.  It is primarily
intended to provide a means of creating 3D content for TeX documents,
but it can also create animations containing text typeset by TeX.
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
