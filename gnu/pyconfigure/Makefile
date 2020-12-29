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

NAME = pyconfigure
GARNAME = pyconfigure
GARVERSION = 0.2.2
HOME_URL = http://www.gnu.org/software/pyconfigure/
DESCRIPTION = configure interface for Python-based packages
define BLURB
GNU pyconfigure provides template files for easily implementing
standards-compliant configure scripts and Makefiles for Python-based
packages.  It is designed to work alongside existing Python setup
scripts, making it easy to integrate into existing projects.  Powerful
and flexible Autoconf macros are available, allowing you to easily
make adjustments to the installation procedure based on the
capabilities of the target computer.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS = autoconf

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
