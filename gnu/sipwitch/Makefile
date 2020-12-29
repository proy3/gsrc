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

NAME = SIP Witch
GARNAME = sipwitch
GARVERSION = 1.9.2
HOME_URL = http://www.gnu.org/software/sipwitch/
DESCRIPTION = Secure peer-to-peer VoIP server for the SIP protocol
define BLURB
GNU SIP Witch is a peer-to-peer Voice-over-IP server that uses the
SIP protocol.  Calls can be made from behind NAT firewalls and
without the need for a service provider.  Its peer-to-peer design
ensures that there is no central point for media intercept or capture
and thus it can be used to construct a secure telephone system that
operates over the public internet.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS = ucommon gnutls

######################################################################

include ../../gar.lib/auto.mk
include config.mk
