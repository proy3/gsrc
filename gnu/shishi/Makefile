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

NAME = Shishi
GARNAME = shishi
GARVERSION = 1.0.2
HOME_URL = http://www.gnu.org/software/shishi/
DESCRIPTION = Implementation of the Kerberos 5 network security system
define BLURB
GNU Shishi is a free implementation of the Kerberos 5 network security
system.  It is used to allow non-secure network nodes to communicate
in a secure manner through client-server mutual authentication via
tickets.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = libtasn1 libgcrypt gnutls
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-system-asn1 \
		  --with-libtasn1-prefix=$(prefix) \
		  --with-libgnutls-prefix=$(prefix) \
		  --with-libgcrypt-prefix=$(prefix)
