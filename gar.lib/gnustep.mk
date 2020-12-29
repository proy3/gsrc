# Rules for GSRC ports for GNUstep packages.
#
# Copyright (C) 2012 Free Software Foundation
#
# Redistribution and/or use, with or without modification, is
# permitted.  This software is without warranty of any kind.  The
# author(s) shall not be liable in the event that use of the
# software causes damage.

include ../../gar.lib/auto.mk

GS_SETUP = . /$(prefix)/System/Library/Makefiles/GNUstep.sh
CONFIGURE_ENV += $(GS_SETUP) &&
BUILD_ENV += $(GS_SETUP) &&
INSTALL_ENV += $(GS_SETUP) &&
