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

NAME = Prolog
GARNAME = gprolog
GARVERSION = 1.4.4
HOME_URL = http://www.gnu.org/software/gprolog/
DESCRIPTION = Prolog compiler
define BLURB
GNU Prolog is a standards-compliant Prolog compiler with constraint
solving over finite domains.  It accepts Prolog+ constraint programs
and produces a compiled, native binary which can function in a
stand-alone manner.  It also features an interactive interpreter.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
WORKSRC = $(WORKDIR)/$(DISTNAME)/src/

BUILDDEPS = 
LIBDEPS = 

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --with-install-dir=$(prefix)/share/$(GARNAME)/$(GARVERSION) \
		  --with-links-dir=$(packagedir)/bin --with-doc-dir=$(prefix)/share/doc

post-install:
	$(MAKE) -C $(WORKSRC) install-links INSTALL_DIR=$(packagedir)/share/$(GARNAME)/$(GARVERSION)
	for f in $(packagedir)/bin/*; do \
		ln -s $$f $(prefix)/bin/`basename $$f`; \
	done
	$(MAKECOOKIE)
