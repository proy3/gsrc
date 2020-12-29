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

NAME = Common Lisp
GARNAME = gcl
GARVERSION = 2.6.11
HOME_URL = http://www.gnu.org/software/gcl/
DESCRIPTION = A Common Lisp implementation
define BLURB
GCL is an implementation of the Common Lisp language.  It features
the ability to compile to native object code and to load native
object code modules directly into its lisp core.  It also features a
stratified garbage collection strategy, a source-level debugger and a
built-in interface to the Tk widget system.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
WORKSRC = $(WORKDIR)/$(GARNAME)/
PATCHFILES = $(DISTNAME)-emacs-default.diff
INFO_FILES = $(GARNAME)-si.info $(GARNAME)-tk.info

BUILDDEPS =
LIBDEPS = readline

USE_AUTORECONF=y

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
