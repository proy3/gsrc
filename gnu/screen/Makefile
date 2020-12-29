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

NAME = Screen
GARNAME = screen
GARVERSION = 4.2.1
HOME_URL = http://www.gnu.org/software/screen/
DESCRIPTION = Full-screen window manager providing multiple terminals
define BLURB
GNU Screen is a terminal window manager that multiplexes a single
terminal between several processes.  The virtual terminals each
provide features such as a scroll-back buffer and a copy-and-paste
mechanism.  Screen then manages the different virtual terminals,
allowing you to easily switch between them, to detach them from the
current session, or even splitting the view to show two terminals at
once.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
