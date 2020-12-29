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

NAME = Libgcrypt
GARNAME = libgcrypt
GARVERSION = 1.6.2
HOME_URL = http://www.gnu.org/software/libgcrypt/
DESCRIPTION = Cryptographic function library
define BLURB
Libgcrypt is a general-purpose cryptographic library.  It provides
the standard cryptographic building blocks such as symmetric ciphers,
hash algorithms, public key algorithms, large integer functions and
random number generation.
endef

######################################################################

MASTER_SITES = $(MASTER_GNUPG)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = gcrypt.info

BUILDDEPS =
LIBDEPS = libgpg-error

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
