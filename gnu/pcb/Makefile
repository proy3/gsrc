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

NAME = PCB
GARNAME = pcb
GARVERSION = 20110918
HOME_URL = http://www.gnu.org/software/pcb/
DESCRIPTION = Design printed circuit board layouts
define BLURB
GNU PCB is an interactive tool for editing printed circuit board layouts.
It features a rats-nest implementation, schematic/netlist import, and
design rule checking.  It also includes an autorouter and a trace
optimizer; and it can produce photorealistic and design review
images.
endef

######################################################################

MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(GARNAME)/files/$(GARNAME)/$(DISTNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =


BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
