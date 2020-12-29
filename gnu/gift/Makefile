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

NAME = The GNU Image-Finding Tool
GARNAME = gift
GARVERSION = 0.1.14
HOME_URL = http://www.gnu.org/software/gift/
DESCRIPTION = GNU Image Finding Tool, with query by example
define BLURB
The GNU Image-Finding Tool (GIFT) is a Content Based Image Retrieval
System.  It uses the content of images to perform queries on a
collection, enabling you to query by example.  Also, a tool to index
whole directory trees is included.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = fix-build.diff

BUILDDEPS = 
LIBDEPS = 

######################################################################

USE_AUTORECONF = y

include ../../gar.lib/auto.mk
include config.mk

PATCHOPTS = -p0
