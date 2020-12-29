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

NAME = Gorm
GARNAME = gorm
GARVERSION = 1.2.20
HOME_URL = http://www.gnustep.org/
DESCRIPTION = GNUstep graphical interface builder
define BLURB
 Gorm, the "Graphical Object Relationship Modeller"  is a graphical
 interface builder for GNUstep.  It makes designing graphical user
 interfaces intuitive by allowing widgets to be dragged and dropped 
 into place.  It also features powerful inspectors and
 interoperability with the GNUstep ProjectCenter.
endef

######################################################################

MASTER_SITES = $(MASTER_GNUSTEP)
MASTER_SUBDIR = dev-apps/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
CONFIGURE_SCRIPTS =

BUILDDEPS =
LIBDEPS = gnustep-base gnustep-gui gnustep-backend

######################################################################

include ../../gar.lib/gnustep.mk
include config.mk
