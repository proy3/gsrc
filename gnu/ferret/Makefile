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

NAME = Ferret
GARNAME = ferret
GARVERSION = 0.7
HOME_URL = http://www.gnu.org/software/ferret/
DESCRIPTION = Entity/relationship based data modeler
define BLURB
GNU Ferret is a graphical data modeler for the Entity/Relationship
paradigm.  It can automatically create relational schemas from the
data models and it can be used to generate SQL statements in a
variety of dialects.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INSTALL_SCRIPTS = libs dtd widgets binary

BUILDDEPS =
LIBDEPS = tcl tk

######################################################################

include ../../gar.mk
include config.mk

pre-install:
	exec sed -i -e 's|/usr/bin/wish|$(WISH)|' $(WORKSRC)/ferret
	exec sed -i -e '1 a\cd $(prefix)/share/$(GARNAME)/' $(WORKSRC)/ferret
	$(MAKECOOKIE)

install-libs:
	@mkdir -p $(packageprefix)/share/$(GARNAME)/src
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/src $(WORKSRC)/src/*.tcl
	$(MAKECOOKIE)

install-dtd:
	@install -m644 -D $(WORKSRC)/gerwinml/gerwinml.dtd \
		$(packageprefix)/share/$(GARNAME)/gerwinml/gerwinml.dtd
	$(MAKECOOKIE)

install-widgets:
	@mkdir -p $(packageprefix)/share/$(GARNAME)/widgets/bwidget/
	@mkdir -p $(packageprefix)/share/$(GARNAME)/widgets/bwidget/BWman/
	@mkdir -p $(packageprefix)/share/$(GARNAME)/widgets/bwidget/images/
	@mkdir -p $(packageprefix)/share/$(GARNAME)/widgets/bwidget/lang/
	@mkdir -p $(packageprefix)/share/$(GARNAME)/widgets/bwidget/tests/
	@mkdir -p $(packageprefix)/share/$(GARNAME)/widgets/icons/
	@mkdir -p $(packageprefix)/share/$(GARNAME)/widgets/tablelist/
	@mkdir -p $(packageprefix)/share/$(GARNAME)/widgets/tablelist/scripts/
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/bwidget/ \
		$(WORKSRC)/widgets/bwidget/*.tcl
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/bwidget/BWman \
		$(WORKSRC)/widgets/bwidget/BWman/*.html
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/bwidget/images \
		$(WORKSRC)/widgets/bwidget/images/*.gif
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/bwidget/images \
		$(WORKSRC)/widgets/bwidget/images/*.xbm
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/bwidget/lang \
		$(WORKSRC)/widgets/bwidget/lang/*.rc
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/bwidget/tests \
		$(WORKSRC)/widgets/bwidget/tests/entry.test
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/icons \
		$(WORKSRC)/widgets/icons/*.tcl
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/icons \
		$(WORKSRC)/widgets/icons/tkIcons*
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/tablelist \
		$(WORKSRC)/widgets/tablelist/*.tcl
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/tablelist/scripts \
		$(WORKSRC)/widgets/tablelist/scripts/*.tcl
	@install -m644 -t $(packageprefix)/share/$(GARNAME)/widgets/tablelist/scripts \
		$(WORKSRC)/widgets/tablelist/scripts/tclIndex
	$(MAKECOOKIE)

install-binary:
	@install -m755 -D $(WORKSRC)/ferret $(packageprefix)/bin/ferret
	$(MAKECOOKIE)
