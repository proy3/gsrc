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

NAME = AUCTeX
GARNAME = auctex
GARVERSION = 11.87
HOME_URL = http://www.gnu.org/software/auctex/
DESCRIPTION = Emacs environment for editing (all flavors of) TeX files
define BLURB
AUCTeX is an integrated environment for producing TeX documents in
Emacs.  It allows many different standard TeX macros to be inserted
with simple keystrokes or menu selection.  It offers an interface to
external programs, enabling you to compile or view your documents
from within Emacs.  AUCTeX also features the ability to place inline
previews of complex TeX statements such as mathematical formulae.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(GARNAME).info preview-latex.info

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
