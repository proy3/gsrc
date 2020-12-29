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

NAME = libavl
GARNAME = avl
GARVERSION = 2.0.3
HOME_URL = http://www.gnu.org/software/avl
DESCRIPTION = Binary and balanced search trees
define BLURB
libavl provides a large collection of binary search tree and balanced
tree routines for C.  These trees offer at least O(log n) performance
for usually costly operations such as searching, inserting or
deleting items from a data structure.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INSTALL_SCRIPTS = infofiles

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.mk
include config.mk

install-info:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing info files\n$(OFF)"
	$(INSTALL) -d $(packageprefix)/share/info
	$(INSTALL_INFO) $(WORKSRC)/libavl.info
	$(MAKECOOKIE)

custom-post-install:
	@echo ""
	@echo "NOTE:"
	@echo "\
libavl is not intended to be built and installed as a shared library but, \
rather, to be pulled directly into a source tree and used in development. Only \
the documentation has been installed (in the 'info' format, located at \
$(infodir)/libavl.info)."
	@echo ""
