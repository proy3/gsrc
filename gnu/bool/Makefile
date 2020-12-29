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

NAME = Bool
GARNAME = bool
GARVERSION = 0.2.1
HOME_URL = http://www.gnu.org/software/bool/
DESCRIPTION = Finding text and HTML files that match boolean expressions
define BLURB
GNU Bool is a utility to perform text searches on files using Boolean
expressions.  For example, a search for "hello AND world" would
return a file containing the phrase "Hello, world!".  It supports
both AND and OR statements, as well as the NEAR statement to search
for the occurrence of words in close proximity to each other.  It
handles context gracefully, accounting for new lines and paragraph
changes.  It also has robust support for parsing HTML files.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES =

BUILDDEPS =
LIBDEPS =

######################################################################

include ../../gar.lib/auto.mk
include config.mk
