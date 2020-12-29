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

NAME = GSEGrafix
GARNAME = gsegrafix
GARVERSION = 1.0.6
HOME_URL = http://www.gnu.org/software/gsegrafix/
DESCRIPTION = GNOME application to create scientific and engineering plots
define BLURB
GSEGrafix is an application which produces high-quality graphical
plots for science and engineering.  Plots are specified via simple
ASCII parameter files and data files and are presented in an
anti-aliased GNOME canvas.  The program supports rectangular
two-dimensional plots, histograms, polar-axis plots and three-dimensional
plots.  Plots can be printed or saved to BMP, JPEG or PNG image
formats.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig

BUILDDEPS = 
LIBDEPS =  intltool gtk libgnomecanvas libbonoboui gconf gnome-vfs \
	gnome-keyring libgnome libgnomeui

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
