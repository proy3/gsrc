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

NAME = ccRTP
GARNAME = ccrtp
GARVERSION = 2.0.9
HOME_URL = http://www.gnu.org/software/ccrtp/
DESCRIPTION = Implementation of RTP (real-time transport protocol)
define BLURB
GNU ccRTP is an implementation of RTP, the real-time transport protocol
from the IETF.  It is suitable both for high capacity servers and
personal client applications.  It is flexible in its design, allowing
it to function as a framework for the framework, rather than just
being a packet-manipulation library.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = ccrtp/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = libgcrypt commoncpp

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
