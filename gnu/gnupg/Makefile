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

NAME = GnuPG
GARNAME = gnupg
GARVERSION = 2.0.26
HOME_URL = http://www.gnu.org/software/gnupg
DESCRIPTION = GNU Privacy Guard
define BLURB
The GNU Privacy Guard is a complete implementation of the OpenPGP
standard.  It is used to encrypt and sign data and communication.  It
features powerful key management and the ability to access public key
servers.  It includes several libraries: libassuan (IPC between GnuPG
components), libgpg-error (centralized GnuPG error values), and libskba
(working with X.509 certificates and CMS data).
endef

######################################################################

MASTER_SITES = $(MASTER_GNUPG)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.bz2
SIGFILES = $(DISTNAME).tar.bz2.sig

BUILDDEPS =
LIBDEPS = libgpg-error libgcrypt libassuan libksba pth zlib readline

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
