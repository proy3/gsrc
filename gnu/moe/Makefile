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

NAME = Moe
GARNAME = moe
GARVERSION = 1.6
HOME_URL = http://www.gnu.org/software/moe/
DESCRIPTION = Modeless, multiple-buffer, user-friendly 8-bit text editor
define BLURB
GNU Moe is a powerful-but-simple-to-use text editor.  It works in a
modeless manner, and features an intuitive set of key-bindings that
assign a degree of severity to each key; for example, key
combinations with the Alt key are for harmless commands like cursor
movements while combinations with the Control key are for commands
that will modify the text.  Moe features multiple windows, unlimited
undo/redo, unlimited line length, global search and replace, and
more.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.lz
SIGFILES = $(DISTNAME).tar.lz.sig

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
