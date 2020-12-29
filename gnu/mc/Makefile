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

NAME = Midnight Commander
GARNAME = mc
GARVERSION = 4.6.1
HOME_URL = http://www.gnu.org/software/mc/
DESCRIPTION = Graphical file manager
define BLURB
GNU Midnight Commander is a command-line file manager laid out in a
common two-pane format.  In addition to standard file management
tasks such as copying and moving, Midnight Commander also supports
viewing the contents of RPM package files and other archives and
managing files on other computers via FTP or FISH.  It also includes
a powerful text editor for opening text files.
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
include config.mk
