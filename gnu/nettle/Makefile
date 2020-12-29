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

NAME = Nettle
GARNAME = nettle
GARVERSION = 3.0
HOME_URL = http://www.gnu.org/software/lsh/
DESCRIPTION = C library for low-level cryptographic functionality
define BLURB
GNU Nettle is a low-level cryptographic library.  It is designed to fit
in easily in almost any context.  It can be easily included in
cryptographic toolkits for object-oriented languages or in
applications themselves.
endef

######################################################################

MASTER_SITES = http://www.lysator.liu.se/~nisse/archive/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = gmp

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --libdir=$(prefix)/lib
