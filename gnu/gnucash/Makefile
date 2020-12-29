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

NAME = GnuCash
GARNAME = gnucash
GARVERSION = 2.6.4
HOME_URL = http://www.gnu.org/software/gnucash
DESCRIPTION = Personal and small business financial accounting software
define BLURB
GnuCash is personal and professional financial-accounting
software.  It can be used to track bank accounts, stocks, income and
expenses, based on the double-entry accounting practice.  It includes
support for QIF/OFX/HBCI import and transaction matching.  It also
automates several tasks, such as financial calculations or scheduled
transactions.
endef

######################################################################

MASTER_SITES = $(MASTER_SOURCEFORGE)
MASTER_SUBDIR = $(GARNAME)/files/$(GARNAME)
MASTER_SUBDIR = $(GARNAME)/files/$(GARNAME)%20%28stable%29/$(GARVERSION)/
DISTFILES = $(DISTNAME).tar.gz
SIGFILES = 

BUILDDEPS =
LIBDEPS = gtk2 slib

######################################################################

include ../../gar.lib/auto.mk
include config.mk
