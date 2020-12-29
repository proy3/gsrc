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

NAME = xorriso
GARNAME = xorriso
GARVERSION = 1.3.8
_BASEVER = 1.3.6
HOME_URL = http://www.gnu.org/software/xorriso/
DESCRIPTION = Create, manipulate, burn ISO-9660 filesystems
define BLURB
GNU Xorriso is a tool for copying files to and from ISO 9660 Rock
Ridge, a.k.a. Compact Disc File System, filesystems and it allows
session-wise manipulation of them.  It features a formatter and burner
for CD, DVD and BD.  It can operate on existing ISO images or it can
create new ones.  xorriso can then be used to copy files directly into
or out of ISO files.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
WORKSRC = $(WORKDIR)/$(GARNAME)-$(_BASEVER)
INFO_FILES = xorriso.info xorrisofs.info xorrecord.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
