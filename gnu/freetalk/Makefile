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

NAME = Freetalk
GARNAME = freetalk
GARVERSION = 3.2
HOME_URL = http://www.gnu.org/software/freetalk/
DESCRIPTION = Extensible console-based Jabber client
define BLURB
GNU Freetalk is a command-line Jabber/XMPP chat client.  It notably
uses the Readline library to handle input, so it features convenient
navigation of text as well as tab-completion of buddy names, commands
and English words.  It is also scriptable and extensible via Guile.
endef

######################################################################

MASTER_SITES = http://savannah.gnu.org/download/
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = fix-build.diff

BUILDDEPS =
LIBDEPS = readline guile loudmouth

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

PATCHOPTS = -p2
CFLAGS += "-I/usr/include/loudmouth-1.0"
