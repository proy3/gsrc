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

NAME = MCSim
GARNAME = mcsim
GARVERSION = 5.5.0
HOME_URL = http://www.gnu.org/software/mcsim/
DESCRIPTION = Monte Carlo simulation and analysis
define BLURB
GNU MCSim is a package to perform simulations.  It supports statistical
or deterministic simulation models via Monte Carlo stochastic
simulations or dynamic, ODE-based simulations.  It also can do
Bayesian inference through Markov Chain Monte Carlo simulations.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
PATCHFILES = $(DISTNAME)-only-build-info-docs.diff \
	$(DISTNAME)-dont-wall-on-automake.diff

BUILDDEPS =
LIBDEPS = gsl

USE_AUTORECONF = y

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
