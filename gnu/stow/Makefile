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

NAME = Stow
GARNAME = stow
GARVERSION = 2.2.0
HOME_URL = http://www.gnu.org/software/stow/
DESCRIPTION = Managing installed software packages
define BLURB
GNU Stow is a symlink manager.  It generates symlinks to directories of
data and makes them appear to be merged into the same directory.  It
is typically used for managing software packages installed from source,
by letting you install them apart in distinct directories and then
create symlinks to the files in a common directory such as
/usr/local.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-op-precedence.diff

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
