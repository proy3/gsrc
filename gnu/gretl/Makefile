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

NAME = gretl
GARNAME = gretl
GARVERSION = 1.9.13
HOME_URL = http://www.gnu.org/software/gretl/
DESCRIPTION = Statistical analysis of economic data (econometrics)
define BLURB
GNU Gretl is a package for performing statistical computations for
econometrics.  It consists of both a command-line client and a
graphical client.  It features a variety of estimators such as
least-squares and maximum likelihood; several time series methods such
as ARIMA and GARCH; limited dependent variables such as logit,
probit and tobit; and a powerful scripting language.  It can output
models as LaTeX files.  It also may be linked to
GNU R and GNU Octave for further data analysis.
endef

######################################################################

MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(GARNAME)/files/$(GARNAME)/$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.bz2
SIGFILES =

BUILDDEPS =
LIBDEPS = libxml2 libfftw gtk gdk-pixbuf readline mpfr

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --enable-gtk3
