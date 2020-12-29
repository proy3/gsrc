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

NAME = R
GARNAME = r
UPSTREAMNAME = R
GARVERSION = 3.1.0
HOME_URL = http://www.gnu.org/software/r
DESCRIPTION = Environment for statistical computing and graphics
define BLURB
R is a language and environment for statistical computing and
graphics.  It provides a variety of statistical techniques, such as
linear and nonlinear modeling, classical statistical tests,
time-series analysis, classification and clustering.  It also provides
robust support for producing publication-quality data plots.  A large
amount of 3rd-party packages are available, greatly increasing its
breadth and scope.
endef

######################################################################

MASTER_SITES = http://cran.r-project.org/src/base/
MASTER_SUBDIR = R-3/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 

BUILDDEPS =
LIBDEPS = gettext tcl tk readline

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --without-included-gettext
