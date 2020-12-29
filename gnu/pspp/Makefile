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

NAME = PSPP
GARNAME = pspp
GARVERSION = 0.8.4
HOME_URL = http://www.gnu.org/software/pspp/
DESCRIPTION = Statistical analysis
define BLURB
GNU PSPP is a statistical analysis program.  It can perform descriptive
statistics, T-tests, linear regression and non-parametric tests.  It
features both a graphical interface as well as command-line input.
PSPP is designed to interoperate with Gnumeric, LibreOffice and
OpenOffice.  Data can be imported from spreadsheets, text files and
database sources and it can be output in text, PostScript, PDF or
HTML.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(GARNAME).info $(GARNAME)-dev.info

BUILDDEPS =
LIBDEPS = gsl plotutils ncurses readline libxml2 zlib

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-libreadline-prefix=$(prefix)
