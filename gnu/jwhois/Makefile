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

NAME = JWHOIS
GARNAME = jwhois
GARVERSION = 4.0
HOME_URL = http://www.gnu.org/software/jwhois/
DESCRIPTION = An extended whois client in Java
define BLURB
GNU jwhois is a client for the WHOIS protocol, which allows you to query
the owner of a domain name.  The program uses an extensible
configuration file to determine the most appropriate server to query
and, upon success displays the result to the user, otherwise it can
optionally redirect the query to another server.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = fix-build.diff

BUILDDEPS =
LIBDEPS = libiconv

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-libiconv-prefix=$(prefix) CFLAGS="-I$(prefix)/include"
