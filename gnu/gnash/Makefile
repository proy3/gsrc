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

NAME = Gnash
GARNAME = gnash
GARVERSION = 0.8.10
HOME_URL = http://www.gnu.org/software/gnash/
DESCRIPTION = Flash movie player
define BLURB
Gnash is a free Flash movie player.  It supports SWF version v7 and
some of v8 and v9.  It is possible to configure Gnash to use several
different audio or video backends, ensuring good performance.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = $(DISTNAME).tar.gz.sig
PATCHFILES = $(DISTNAME)-fix-build.diff

BUILDDEPS = 
LIBDEPS = boost zlib libpng gtk2 pango atk cairo zlib libpng glib  \
	  libsdl libxml2 curl freetype2 fontconfig expat gstreamer \
	  gst-plugins-base agg giflib speex jpeg netcat

######################################################################

USE_AUTORECONF = y

include ../../gar.lib/auto.mk
include config.mk

CONFIGURE_ARGS += --with-libiconv-prefix=$(prefix) \
	          --with-boost-incl=$(prefix)/include \
		  --with-boost-lib=$(prefix)/lib
