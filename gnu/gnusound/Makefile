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

NAME = GNUsound
GARNAME = gnusound
GARVERSION = 0.7.5
HOME_URL = http://www.gnu.org/software/gnusound/
DESCRIPTION = Multi-track sound editor for GNOME
define BLURB
GNUsound is a multitrack sound editor for GNOME 1 and 2.  It can read
and write many audio file formats such as WAV, MP3 and FLAC.  It can
work with the OSS, ALSA or JACK audio backends.  It provides many
different built-in audio processing modules, such as fades in/out,
delay, and filters.  GLADSPA plugins may also be used for further
processing.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.bz2
SIGFILES = $(DISTNAME).tar.bz2.sig
PATCHFILES = fix-install.diff

BUILDDEPS = 
LIBDEPS = gtk2 glib cairo gdk-pixbuf atk libgnomeui # libglade gthread

######################################################################

ifeq ($(FORCE_BUILD),y)
	include ../../gar.lib/auto.mk
else
	include ../../gar.lib/broken.mk
endif
include config.mk

CONFIGURE_ARGS += --with-gtk-prefix=$(prefix) \
		  --with-gtk-exec-prefix=$(prefix) \
		  owner_user=`whoami` \
		  owner_group=`whoami` \
		  GNOME2_CFLAGS="-I$(prefix)/include/gtk-2.0 \
		  		 -I$(prefix)/include/glib-2.0 \
				 -I$(prefix)/lib/glib-2.0/include \
				 -I$(prefix)/include/cairo \
				 -I$(prefix)/include/pango-1.0 \
				 -I$(prefix)/include/atk-1.0 \
				 -I$(prefix)/include/gdk-pixbuf-2.0 \
				 -I$(prefix)/lib/gtk-2.0/include"
		  GNOME2_LIBS="-L$(prefix)/lib/ \
			       -L$(prefix)/lib/cairo \
			       -L$(prefix)/lib/gdk-pixbuf-2.0 \
			       -L$(prefix)/lib/gtk-2.0 \
			       -L$(prefix)/lib/glib-2.0"
