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

NAME = gxmessage
GARNAME = gxmessage
GARVERSION = 3.4.0
HOME_URL = http://www.gnu.org/software/gxmessage/
DESCRIPTION = Open popup message window with buttons for return
define BLURB
GNU gxmessage is a program that pops up dialog windows, which display a
message to the user and waits for their action.  The program then
exits with an exit code corresponding to the response.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS = gtk intltool

######################################################################

include ../../gar.lib/auto.mk
include config.mk
