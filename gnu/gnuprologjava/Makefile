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

NAME = Prolog for Java
GARNAME = gnuprologjava
GARVERSION = 0.2.6
HOME_URL = http://www.gnu.org/software/gnuprologjava/
DESCRIPTION = Implementation of Prolog as a Java library
define BLURB
GNU Prolog for Java is an implementation of the ISO Prolog standard
as a Java library (gnu.prolog).  Thus, with it you can use Prolog
from within Java programs.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME)-src.zip
SIGFILES = $(DISTNAME)-src.zip.sig
EXTRACTDIR = $(WORKSRC)
BUILD_SCRIPTS = $(WORKSRC)/build.xml info
INSTALL_SCRIPTS = jar info

BUILDDEPS = apache-ant
LIBDEPS =

######################################################################

include ../../gar.mk
include ../../gar.lib/info.mk
include config.mk

pre-extract:
	@mkdir -p $(EXTRACTDIR)
	$(MAKECOOKIE)

pre-build:
	sed -i '39s/info-gnuprolog@gnu.org/info-gnuprolog@@gnu.org/' $(WORKSRC)/docs/manual.texinfo
	$(MAKECOOKIE)

build-info:
	@printf "[$(OK)build$(OFF)] $(MSG)Building info documentation$(OFF)\n"
	cd $(WORKSRC)/docs && makeinfo -o $(GARNAME).info manual.texinfo
	$(MAKECOOKIE)

install-jar:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing gnuprologjava.jar$(OFF)\n"
	mkdir -p $(packageprefix)/share/java
	install -m644 -D $(WORKSRC)/build/$(DISTNAME).jar \
		$(packageprefix)/share/java/$(GARNAME).jar
	$(MAKECOOKIE)

install-info:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing info documentation$(OFF)\n"
	mkdir -p $(packageprefix)/share/info
	install -m644 -D $(WORKSRC)/docs/$(GARNAME).info \
		$(packageprefix)/share/info/$(GARNAME).info

