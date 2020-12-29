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

NAME = Emacs
GARNAME = emacs
GARVERSION = 24.3
HOME_URL = http://www.gnu.org/software/emacs/
DESCRIPTION = The extensible, customizable, self-documenting text editor
define BLURB
GNU Emacs is an extensible and highly customizable text editor.  It
is based on an Emacs Lisp interpreter with extensions for text
editing.  Emacs has been extended in essentially all areas of
computing, giving rise to a vast array of packages supporting, e.g.,
email, IRC and XMPP messaging, spreadsheets, remote server editing,
and much more.  Emacs includes extensive documentation on all
aspects of the system, from basic editing to writing large Lisp
programs.  It has full Unicode support for nearly all human
languages.
endef

######################################################################

MASTER_SITES = $(MASTER_GNU)
MASTER_SUBDIR = $(GARNAME)/
DISTFILES = $(DISTNAME)$(MINOR_UPDATE).tar.gz
SIGFILES = $(DISTNAME)$(MINOR_UPDATE).tar.gz.sig
INFO_FILES = \
ada-mode.info.gz      emacs.info.gz        pgg.info.gz \
auth.info.gz          epa.info.gz          rcirc.info.gz \
autotype.info.gz      erc.info.gz          reftex.info.gz \
bovine.info.gz        ert.info.gz          remember.info.gz \
calc.info.gz          eshell.info.gz       sasl.info.gz \
ccmode.info.gz        eudc.info.gz         sc.info.gz \
cl.info.gz            flymake.info.gz      semantic.info.gz \
dbus.info.gz          forms.info.gz        ses.info.gz \
dired-x.info.gz       gnus.info.gz         sieve.info.gz \
ebrowse.info.gz       htmlfontify.info.gz  smtpmail.info.gz \
ede.info.gz           idlwave.info.gz      speedbar.info.gz \
ediff.info.gz         info.info.gz         srecode.info.gz \
edt.info.gz           mairix-el.info.gz    tramp.info.gz \
efaq.info.gz          message.info.gz      url.info.gz \
eieio.info.gz         mh-e.info.gz         vip.info.gz \
eintr.info.gz         newsticker.info.gz   viper.info.gz \
elisp.info.gz         nxml-mode.info.gz    widget.info.gz \
emacs-gnutls.info.gz  org.info.gz          wisent.info.gz \
emacs-mime.info.gz    pcl-cvs.info.gz      woman.info.gz
BUILDDEPS = texinfo
LIBDEPS = ncurses

######################################################################

include ../../gar.lib/auto.mk
include ../../gar.lib/info.mk
include config.mk
