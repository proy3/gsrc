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

NAME = Gratuitous ARP Daemon
GARNAME = garpd
GARVERSION = 0.2.0
HOME_URL = http://www.gnu.org/software/garpd/
DESCRIPTION = Broadcast gratuitous ARP requests for IPMI and more
define BLURB
GNU garpd broadcasts Gratuitous ARP (Address Resolution Protocol)
requests/replies for a list of MAC address <-> IP address mappings on
specified interfaces at regular intervals.  Gratuitous ARP request
packets are those where the source and the destination IPs are both
the IP of the requesting machine.  Gratuitous ARP replies are those
which are not made to a corresponding request.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
