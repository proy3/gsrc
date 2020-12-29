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

NAME = gradebook
GARNAME = ggradebook
GARVERSION = 0.91
HOME_URL = http://www.gnu.org/software/ggradebook/
DESCRIPTION = GNOME application to track students' grades for teachers
define BLURB
GNU Gradebook is an application for teachers for tracking student
grades. It supports several grading styles, including American (A, B,
C, D, F) and European numeric scales.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =
WORKSRC = $(WORKDIR)/Ggradebook-$(GARVERSION)/

BUILDDEPS =
LIBDEPS = gtk1

######################################################################

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --with-gtk-prefix=$(prefix) \
		  --with-gtk-exec-prefix=$(prefix) \

BUILD_ARGS += GTK_CFLAGS="-I$(prefix)/include/" GTK_LIBS="-L$(prefix)/lib/"
