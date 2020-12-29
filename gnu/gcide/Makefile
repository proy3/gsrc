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

NAME = Collaborative International Dictionary of English
GARNAME = gcide
GARVERSION = 0.51
HOME_URL = http://www.gnu.org/software/gcide
DESCRIPTION = GNU Collaborative International Dictionary of English
define BLURB
GCIDE is a free dictionary based on a combination of sources.  It can
be used via the GNU Dico program or accessed online at
http://gcide.gnu.org.ua/
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INSTALL_SCRIPTS = gcide

BUILDDEPS =
LIBDEPS = dico

######################################################################

include ../../gar.mk
include config.mk

install-gcide:
	@echo -e "[$(OK)install$(OFF)] $(MSG)Installing dictionary files$(OFF)"
	@mkdir -p $(packageprefix)/share/gcide
	@for f in $(WORKSRC)/*; do \
		install -m644 $$f $(packageprefix)/share/gcide/`basename $$f`; \
	done
	$(MAKECOOKIE)

post-install:
	@echo -e "$(MSG)GCIDE was installed to $(prefix)/share/gcide. To"
	@echo -e "browse the dictionary, use the gcider program installed"
	@echo -e "from the dico package and point it to the location of"
	@echo -e "GCIDE.$(OFF)"
	$(MAKECOOKIE)
