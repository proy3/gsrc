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

NAME = Serveez
GARNAME = serveez
GARVERSION = 0.2.2
HOME_URL = http://www.gnu.org/software/serveez/
DESCRIPTION = Framework for implementing IP-based servers
define BLURB
GNU Serveez is a server framework providing the routines necessary to
easily implement IP-based servers in your application.  It
demonstrates aspects of network programming in a portable manner,
making it convenient for both simplifying the process of adding a
server to your application or for learning about how network services
work.  Several example servers are provided already, such as an HTTP
server and an IRC server.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig

BUILDDEPS =
LIBDEPS = guile

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
