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

NAME = SCM
GARNAME = scm
GARVERSION = 5f1
HOME_URL =  http://www.gnu.org/software/scm
DESCRIPTION = Scheme implementation
define BLURB
GNU SCM is an implementation of Scheme.  This implementation includes
Hobbit, a Scheme-to-C compiler, which can generate C files whose
binaries can be dynamically or statically linked with a SCM
executable.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-link-lm.diff $(DISTNAME)-no-info.diff \
			 $(DISTNAME)-fix-install.diff
INFO_FILES = $(GARNAME).info hobbit.info Xlibscm.info
INSTALL_SCRIPTS = $(WORKSRC)/Makefile info

BUILDDEPS =
LIBDEPS =  slib termcap readline

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

PATCHOPTS = -p2
CONFIGURE_ARGS += --oldincludedir=$(prefix)/include
BUILD_ARGS += SCHEME_LIBRARY_PATH=$(prefix)/lib/slib/

post-configure:
#	fix destdir mess
	sed -i -e 's|\(\$${exec_prefix}\)|/|' $(WORKSRC)/config.status
	$(MAKECOOKIE)

pre-build:
#	more destdir fixing, should be redundant but it doesn't seem to be
	sed -i -e 's|\(\$$(DESTDIR)\)|/|g' $(WORKSRC)/Makefile
#	build scmlit
	cd $(WORKSRC) && $(BUILD_ENV) make scmlit $(BUILD_ARGS)
	$(MAKECOOKIE)

build-$(WORKSRC)/Makefile:
	@printf "[$(OK)build$(OFF)] $(MSG)Running make$(OFF)\n"
	cd $(WORKSRC) && $(BUILD_ENV) make all $(BUILD_ARGS)
	$(MAKECOOKIE)

install-info:
	@printf "[$(OK)install$(OFF)] $(MSG)Installing info files\n$(OFF)"
	for f in $(addprefix $(WORKSRC)/,$(INFO_FILES)); do \
		$(INSTALL_INFO) $$f; \
	done
	$(MAKECOOKIE)

custom-post-install:
	$(prefix)/bin/scm -br new-catalog
	$(MAKECOOKIE)
