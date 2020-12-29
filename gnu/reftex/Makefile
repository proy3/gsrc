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

NAME = RefTeX
GARNAME = reftex
GARVERSION = 4.34
HOME_URL = http://www.gnu.org/software/auctex/reftex.html/
DESCRIPTION = Emacs support for LaTeX cross-references of all kinds
define BLURB
GNU RefTex is a package for implementing labels, references, citations
and indices in LaTeX documents.  It works by wrapping around four
LaTeX macros: label, ref, cite and index.  It automates the common
tasks that normally are required when using these macros.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
CONFIGURE_SCRIPTS =

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

DESTDIR_INSTALL_ARGS += prefix=$(packageprefix)
