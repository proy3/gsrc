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

NAME = Sather
GARNAME = sather
GARVERSION = 1.2.3
HOME_URL = http://www.gnu.org/software/sather/
DESCRIPTION = An object-oriented language designed to be simple, efficient, safe
define BLURB
GNU Sather is an object-oriented programming language similar to Eiffel.
It is designed to be simple, efficient, safe, and non-proprietary.
It features garbage collection, statically-checked strong typing,
multiple inheritance, parameterized classes and more.  This package
consists of a compiler, a class library, the language specification
and programming manual, and a browser for displaying sources and
directed graphs of class inheritance.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
BUILD_SCRIPTS = $(WORKSRC)/Makefile

BUILDDEPS = 
LIBDEPS = 

######################################################################

ifeq ($(FORCE_BUILD),y)
	include ../../gar.mk
else
	include ../../gar.lib/broken.mk
endif
include config.mk

BUILD_ARGS += SATHER_HOME=$(prefix)/lib/sather

build-%/Makefile:
	$(BUILD_ENV) $(MAKE) -C $* full $(BUILD_ARGS)
	$(MAKECOOKIE)
