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

NAME = C-Graph
GARNAME = c-graph
GARVERSION = 2.0
HOME_URL = http://www.gnu.org/software/c-graph/
DESCRIPTION = Visualizing and demonstrating convolution
define BLURB
GNU C-Graph is a tool for demonstrating the theory of convolution.  Thus,
it can serve as an excellent aid to students of signal and systems
theory in visualizing the convolution process.  Rather than forcing
the student to write code, the program offers an intuitive interface
with interactive dialogs to guide them.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = c-graph/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
