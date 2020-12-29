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

NAME = LibreJS
GARNAME = librejs
GARVERSION = 6.0.1
HOME_URL = http://www.gnu.org/software/librejs/
DESCRIPTION = Browser add-on that blocks nonfree nontrivial JavaScript
define BLURB
LibreJS is an add-on for GNU Icecat and other Firefox-based browsers.
It detects non-trivial and non-free JavaScript code from being loaded
without your consent when you browse the web.  JavaScript code that
is free or trivial is allowed to be loaded.
endef

######################################################################

MASTER_SITES = http://www.gnu.org/
MASTER_SUBDIR = s/$(GARNAME)/distribution/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
PATCHFILES = $(DISTNAME)-fix-makefile.diff

BUILDDEPS = addon-sdk
LIBDEPS =

USE_AUTORECONF = y

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
