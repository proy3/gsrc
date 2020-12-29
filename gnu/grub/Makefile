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

NAME = GRUB
GARNAME = grub
GARVERSION = 2.00
HOME_URL = http://www.gnu.org/software/grub/
DESCRIPTION = GRand Unified Boot loader
define BLURB
GRUB is a multiboot bootloader.  It is used for initially loading
the kernel of an operating system and then transferring control to
it. The kernel then goes on to load the rest of the operating system.
As a multiboot bootloader, GRUB handles the presence of multiple
operating systems installed on the same computer; upon booting the
computer, the user is presented with a menu to select one of the
installed operating systems.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.xz
SIGFILES = $(DISTNAME).tar.xz.sig
INFO_FILES = $(GARNAME).info $(GARNAME)-dev.info

BUILDDEPS = gettext bison #flex
LIBDEPS = 

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-bootdir=$(prefix)/boot --with-libiconv-prefix=$(prefix) --disable-werror

pre-build:
	exec sed -i -e '/gets is a security/d' $(WORKSRC)/grub-core/gnulib/stdio.in.h
	$(MAKECOOKIE)
