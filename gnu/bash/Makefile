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

NAME = Bash
GARNAME = bash
GARVERSION = 4.3
PATCHNUM = 30
HOME_URL = http://www.gnu.org/software/bash/
DESCRIPTION = The GNU Bourne-Again SHell
define BLURB
Bash is the shell, or command-line interpreter, of the GNU system.  It
is compatible with the Bourne Shell, but it also integrates useful
features from the Korn Shell and the C Shell and new improvements of
its own.  It allows command-line editing, unlimited command history,
shell functions and aliases, and job control while still allowing
most sh scripts to be run without modification.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
PATCHFILE_SITES = $(MASTER_GNU)
PATCHFILE_SUBDIR = $(GARNAME)/$(DISTNAME)-patches/
SIGFILE_SITES = $(MASTER_GNU)
SIGFILE_SUBDIR = $(PATCHFILE_SUBDIR)
DISTFILES = $(DISTNAME).tar.gz
ifneq ($(PATCHNUM),)
	patchnums = $(shell seq -w 001 $(PATCHNUM))
	PATCHFILES = $(foreach num, $(patchnums), \
			$(GARNAME)$(subst .,,$(GARVERSION))-$(num))
endif
SIGFILES = $(DISTNAME).tar.gz.sig \
	   $(foreach patchfile, $(PATCHFILES), $(patchfile).sig)

BUILDDEPS =
LIBDEPS = readline ncurses

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

PATCHOPTS = -p0
CONFIGURE_ARGS += --with-installed-readline
