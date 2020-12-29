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

NAME = CLISP
GARNAME = clisp
GARVERSION = 2.49
HOME_URL = http://www.gnu.org/software/clisp/
DESCRIPTION = A Common Lisp implementation
define BLURB
GNU CLISP is an implementation of ANSI Common Lisp.  Common Lisp is a
high-level, object-oriented functional programming language.  CLISP
includes an interpreter, a compiler, a debugger, and much more.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = clisp/release/$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
BUILD_SCRIPTS = $(WORKOBJ)/src/Makefile
INSTALL_SCRIPTS = $(WORKOBJ)/src/Makefile-DESTDIR

BUILDDEPS =
LIBDEPS = libsigsegv

######################################################################

include ../../gar.lib/auto.mk

# some kind of problem with the configure script, doesn't pick up the
# header file for sigsegv.h in $prefix/lib
CONFIGURE_ARGS += --ignore-absence-of-libsigsegv
