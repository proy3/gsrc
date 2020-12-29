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

NAME = GNUnet
GARNAME = gnunet
GARVERSION = 0.10.1
HOME_URL = http://www.gnu.org/software/gnunet
DESCRIPTION = Anonymous peer-to-peer file-sharing framework
define BLURB
GNUnet is a framework for secure, peer-to-peer networking.  It works
in a decentralized manner and does not rely on any notion of trusted
services.  One service implemented on it is censorship-resistant
file-sharing.  Communication is encrypted and anonymity is provided
by making messages originating from a peer indistinguishable from
those that the peer is routing.  The package includes gnunet-gtk,
which provides a GTK+ graphical user interface to the GNUnet
service.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS = libunistring libgcrypt libmicrohttpd curl libextractor

######################################################################

include ../../gar.lib/auto.mk
include config.mk
