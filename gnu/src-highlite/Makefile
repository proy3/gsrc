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

NAME = Source-highlight
GARNAME = src-highlite
UPSTREAMNAME = source-highlight
GARVERSION = 3.1.7
HOME_URL = http://www.gnu.org/software/src-highlite/
DESCRIPTION = Produce a document with syntax highlighting from a source file
define BLURB
GNU source-highlight reads in a source code file and produces an output
file in which the keywords are highlighted in different colors to
designate their syntactic role.  It supports over 150 different
languages and it can output to 8 different formats, including HTML,
LaTeX and ODF.  It can also output to ANSI color escape sequences,
so that highlighted source code can be seen in a terminal.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
INFO_FILES = $(UPSTREAMNAME).info $(UPSTREAMNAME)-lib.info

BUILDDEPS =
LIBDEPS = boost

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk

CONFIGURE_ARGS += --with-boost-libdir=$(prefix)/lib
