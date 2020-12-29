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

NAME = Guile
GARNAME = guile
GARVERSION = 2.0.11
HOME_URL = http://www.gnu.org/software/guile/
DESCRIPTION = Scheme implementation intended especially for extensions
define BLURB
Guile is the GNU Ubiquitous Intelligent Language for Extensions, the
official extension language of the GNU system.  It is an
implementation of the Scheme language which can be easily embedded
in other applications to provide a convenient means of extending the
functionality of the application without requiring the source code to
be rewritten.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(DISTNAME).info r5rs.info

BUILDDEPS =
LIBDEPS = gc gmp libtool readline libunistring libffi

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGIGURE_ARGS += --with-libreadline-prefix=$(prefix) \
		    --with-libgmp-prefix=$(prefix)
