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

NAME = Linux Libre
GARNAME = linux-libre
GARVERSION = 3.16
HOME_URL = http://www.gnu.org/software/linux-libre
DESCRIPTION = 100% free redistribution of a cleaned Linux kernel
define BLURB
GNU Linux-Libre is a free (as in freedom) variant of the Linux kernel.
It has been modified to remove all non-free binary blobs.
endef

######################################################################

MASTER_SITES = http://linux-libre.fsfla.org/pub/
MASTER_SUBDIR = $(GARNAME)/releases/$(GARVERSION)-gnu/
DISTFILES = $(DISTNAME)-gnu.tar.xz
SIGFILES = $(DISTNAME)-gnu.tar.xz.sign

WORKSRC = $(WORKDIR)/linux-$(GARVERSION)
CONFIGURE_SCRIPTS = $(WORKSRC)/Makefile
BUILD_SCRIPTS = $(WORKSRC)/Makefile
INSTALL_SCRIPTS = kernel

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.mk
include config.mk

CONFIGURE_ARGS = $(CONFIGURE_OPTS)
BUILD_ARGS += $(if $(USE_PARALLEL),$(MAKE_ARGS_PARALLEL),)

CREATED_MERGE_DIRS = \
	sysconf $(sysconfdir) \
	var $(vardir) \
	rootlib /lib

pre-configure:
	make -C $(WORKSRC) mrproper
	$(MAKECOOKIE)

configure-%/Makefile:
	$(CONFIGURE_ENV) make -C $* $(MAKE_ARGS) $(CONFIGURE_ARGS) $(CONFIGURE_TARGET)
	$(MAKECOOKIE)

post-configure:
	cd $(WORKSRC) && make $(MAKE_ARGS) prepare
	$(MAKECOOKIE)

build-%/Makefile:
	$(BUILD_ENV) make -C $* $(BUILD_ARGS)
	$(MAKECOOKIE)

install-kernel:
	make -C $(WORKOBJ) $(MAKE_ARGS) \
		INSTALL_MOD_PATH=$(packageprefix) \
		INSTALL_HDR_PATH=$(packageprefix) \
		modules_install \
		headers_install \
		firmware_install
	@install -m755 -D $(WORKSRC)/arch/$(ARCH)/boot/bzImage $(packageprefix)/boot/vmlinuz-$(DISTNAME)
	@install -m755 $(WORKSRC)/System.map $(packageprefix)/boot/System.map$(GARVERSION)
	@install -m755 $(WORKSRC)/.config $(packageprefix)/boot/config-$(GARVERSION)
	$(MAKECOOKIE)
