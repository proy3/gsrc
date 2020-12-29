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

NAME = Meta-HTML
GARNAME = metahtml
GARVERSION = 5.091
HOME_URL = http://www.gnu.org/software/metahtml
DESCRIPTION = Combining HTML and Lisp, specifically designed for Web servers
define BLURB
GNU MetaHTML is a server-side programming language designed for the
World Wide Web.  It has a syntax that is similar to HTML and Lisp.
It provides a large function library, including support for sockets,
image creation and connections to other programs.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 
PATCHFILES = $(DISTNAME)-escape-newlines.diff \
             $(DISTNAME)-force-sys-readline.diff \
             $(DISTNAME)-gifq_c-add-errno_h.diff \
             $(DISTNAME)-fix-ldflags-typo.diff \
             $(DISTNAME)-make-gd_o-w-fpic.diff \
             $(DISTNAME)-dont-build-docs.diff \
             $(DISTNAME)-destdir-install.diff
BUILDDEPS = 
LIBDEPS = gdbm



######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += WEBBASEDIR=$(packageprefix)/www/

pre-build:
	sed -i -e 's|LIBS=-L./|LIBS=-L$(prefix)/lib -L/usr/lib -L./|' $(WORKSRC)/libgd/Makefile
	sed -i -e 's|bindir=/www/bin|bindir=$(packageprefix)/bin|' $(WORKSRC)/libgd/Makefile
	sed -i -e 's|DASH_SHARED = @DASH_SHARED@|DASH_SHARED = -shared|' $(WORKSRC)/modules/Makefile.in
	sed -i -e 's|GCC_FPIC = @GCC_FPIC@|GCC_FPIC = -fPIC|' $(WORKSRC)/modules/Makefile.in
