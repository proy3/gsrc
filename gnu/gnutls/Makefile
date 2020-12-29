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

NAME = GnuTLS
GARNAME = gnutls
GARVERSION = 3.3.8
HOME_URL = http://www.gnu.org/software/gnutls/
DESCRIPTION = Transport layer security library
define BLURB
GnuTLS is a secure communications library implementing the SSL, TLS
and DTLS protocols.  It is provided in the form of a C library to support
the protocols, as well as to parse and write X.5009, PKCS 12, OpenPGP
and other required structures.
endef

######################################################################

empty:=
space:= $(empty) $(empty)
VERSION_LIST = $(subst .,$(space),$(GARVERSION))
SERIES = $(subst $(space),.,$(wordlist 1,2,$(VERSION_LIST)))

MASTER_SITES = $(MASTER_GNUTLS)
MASTER_SUBDIR = gcrypt/$(GARNAME)/v$(SERIES)/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig
INFO_FILES = $(GARNAME).info $(GARNAME)-guile.info

BUILDDEPS =
LIBDEPS = libtasn1 libgcrypt nettle gmp # zlib lzo

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

pre-everything:
	@if grep -q "GARVERSION = 3" ../nettle/Makefile; then \
		printf "$(ERR)Note:$(OFF) GnuTLS currently does not build with Nettle 3.0.\n"; \
		printf "      To build GnuTLS, you must manually revert the nettle\n"; \
		printf "      package to its previous version (2.7).\n"; \
		exit 1; \
	fi
	$(MAKECOOKIE)
