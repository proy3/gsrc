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

NAME = MediaGoblin
GARNAME = mediagoblin
GARVERSION = 0.7.1
HOME_URL = http://www.mediagoblin.org/
DESCRIPTION = Photo and media sharing
define BLURB
GNU MediaGoblin is a free media publishing platform.  It runs in a
federalized manner, freeing the user from centralized web services.
It supports pictures, videos and audio.
endef

######################################################################

MASTER_SITES = git://gitorious.org/
MASTER_SUBDIR = $(GARNAME)/
GIT_PATH = $(MASTER_SITES)$(MASTER_SUBDIR)$(GARNAME).git
DISTFILES = $(DISTNAME).tar.gz
NOCHECKSUM = $(DISTFILES)
SIGFILES =

BUILDDEPS =
LIBDEPS =
USE_AUTORECONF = y

######################################################################

include ../../gar.lib/auto.mk
include config.mk
