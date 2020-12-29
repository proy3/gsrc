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

NAME = Libksba
GARNAME = libksba
GARVERSION = 1.2.0
HOME_URL = http://www.gnupg.org/related_software/libksba/index.en.html/
DESCRIPTION = A library for working with X.509 certificates and CMS \
data
define BLURB

endef

######################################################################

MASTER_SITES = $(MASTER_GNUPG)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.bz2
SIGFILES = $(DISTNAME).tar.bz2.sig
INFO_FILES = ksba.info

BUILDDEPS =
LIBDEPS = libgpg-error

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
