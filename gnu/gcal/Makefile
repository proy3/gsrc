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

NAME = gcal
GARNAME = gcal
GARVERSION = 3.6.3
HOME_URL = http://www.gnu.org/software/gcal/
DESCRIPTION = Calculating and printing a wide variety of calendars
define BLURB
Gcal is a program to calculate and print calendars on the
command-line.  Calendars can be printed in 1-month, 3-month or whole-year
views. In addition, eternal holiday lists can be generated for many
countries, which can be complemented by user-made lists of fixed
dates to make an agenda.  Gcal can also calculate astronomical data,
such as the phases of the moon, and supports alternative calendar
formats: Julian, Gregorian, Islamic, Chinese and more.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
