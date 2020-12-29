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

NAME = FreeFont
GARNAME = freefont
GARVERSION = 20120503
HOME_URL = http://www.gnu.org/software/freefont/
DESCRIPTION = Unicode-encoded outline fonts
define BLURB
GNU FreeFont is a collection of scalable outline fonts that are
suitable for general computer use and for desktop publishing. A
serif, a sans serif and a monospace font are included, all available in both
TrueType and OpenType formats.  The fonts support a broad
range of characters for many different writing systems, and have
excellent coverage of mathematical notation.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(GARNAME)-src-$(GARVERSION).tar.gz
SIGFILES = $(GARNAME)-src-$(GARVERSION).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-trim-version.diff
BUILD_SCRIPTS = $(WORKSRC)/sfd/Makefile
INSTALL_SCRIPTS = $(BUILD_TARGET)

BUILDDEPS = fontforge
LIBDEPS =

######################################################################

include config.mk
include ../../gar.mk

build-%/Makefile:
	$(BUILD_ENV) $(MAKE) -C $* $(BUILD_ARGS) $(BUILD_TARGET)
	$(MAKECOOKIE)

install-all: install-ttf install-otf install-woff

install-ttf:
	@mkdir -p $(packageprefix)/share/fonts/TTF
	@install -m644 -t $(packageprefix)/share/fonts/TTF \
		$(WORKOBJ)/sfd/*.ttf
	$(MAKECOOKIE)

install-otf:
	@mkdir -p $(packageprefix)/share/fonts/OTF
	@install -m644 -t $(packageprefix)/share/fonts/OTF \
		$(WORKOBJ)/sfd/*.otf
	$(MAKECOOKIE)

install-woff:
	@mkdir -p $(packageprefix)/share/fonts/WOFF
	@install -m644 -t $(packageprefix)/share/fonts/WOFF \
		$(WORKOBJ)/sfd/*.woff
	$(MAKECOOKIE)
