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

NAME = Xnee
GARNAME = xnee
GARVERSION = 3.19
HOME_URL = http://www.gnu.org/software/xnee/
DESCRIPTION = Record, replay and distribute user actions under X11
define BLURB
GNU Xnee is a program that can record, replay and distribute user
actions in X11.  It can be used to automate user interactions for
testing or demonstration purposes.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

INSTALL_TARGET = install install-info

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

