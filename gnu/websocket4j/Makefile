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

NAME = Gnu WebSocket4J
GARNAME = websocket4j
GARVERSION = 1.3
HOME_URL = http://www.gnu.org/software/websocket4j/
DESCRIPTION = WebSocket protocol implementation for Java-HTML5 communication
define BLURB
GNU Websocket4j is a Java library implementing the WebSocket protocol.
With it, you can build web applications that interact with Java
applications.  The library includes both server- and client-side
functionality.
endef

######################################################################

MASTER_SITES = https://launchpad.net/
MASTER_SUBDIR = $(GARNAME)/trunk/v$(GARVERSION)/+download/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
