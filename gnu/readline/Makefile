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

NAME = Readline
GARNAME = readline
GARVERSION = 6.3
PATCHNUM = 006
HOME_URL = http://www.gnu.org/software/readline/
DESCRIPTION = Edit command lines while typing, with history support
define BLURB
The GNU readline library allows users to edit command lines as they
are typed in.  It can maintain a searchable history of previously
entered commands, letting you easily recall, edit and re-enter past
commands.  It features both Emacs-like and vi-like keybindings,
making its usage comfortable for anyone.
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
	upstream_patches = $(foreach num, $(patchnums), \
			$(GARNAME)$(subst .,,$(GARVERSION))-$(num))
	PATCHFILES = $(upstream_patches) \
	             $(DISTNAME)-link-ncurses.diff
endif
SIGFILES = $(DISTNAME).tar.gz.sig \
	   $(foreach patchfile, $(upstream_patches), $(patchfile).sig)
INFO_FILES = $(GARNAME).info history.info rluserman.info

BUILDDEPS =
LIBDEPS = ncurses

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
