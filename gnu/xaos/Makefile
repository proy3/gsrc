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

NAME = XaoS
GARNAME = xaos
GARVERSION = 3.6
HOME_URL = http://www.gnu.org/software/xaos/
DESCRIPTION = Real-time fractal zoomer
define BLURB
GNU XaoS is a graphical program that generates fractal patterns and
allows you to zoom in and out of them infinitely in a fluid,
continuous manner.  It also includes tutorials that help to explain
how fractals are built.  It can generate many different fractal types
such as the Mandelbrot set.
endef

######################################################################

MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(GARNAME)/files/XaoS/$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-unprotected-locales.diff
INFO_FILES = $(GARNAME).info

BUILDDEPS =
LIBDEPS = gsl libpng gtk gettext

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-gsl --with-gtk-driver
