include ../../config.mk
include ../../gar.conf.mk
include ../../gar.env.mk
-include ../../gar.site.mk

# Function:    gar_patternlist
# Usage:       $(call gar_patternlist,$(PATH),$(PATTERNS))
# Description: Create a list of files to check for that match pattern, in path.
#              The directory is on the outer loop, and pattern on the inner.
#              (This matches the behavior of the linker and Make 3.82+'s
#              Directory Search for Link Libraries)
# Example:     = $(call gar_patternlist,/lib:/usr/lib,lib%.so lib%.a)
#              = /lib/lib%.so /lib/lib%.a /usr/lib/lib%.so /usr/lib/lib%.a
gar_patternlist = $(foreach DIR,$(subst :, ,$1),$(addprefix $(DIR)/,$2))

# Function:    gar_pathsearch
# Usage:       $(call gar_pathsearch,$(FILE),$(PATH),$(PATTERNS))
# Description: Generate a gar_patternlist from $(PATH) and $(PATTERNS), then
#              expand `%' to $(FILE), and return a the subset of the list that
#              exists.
gar_pathsearch = $(wildcard $(subst %,$1,$(call gar_patternlist,$2,$3)))

# Function:    gar_missing
# Usage:       $(call gar_patternlist,$(FILES),$(PATH),$(PATTERNS))
# Description: Return the subset of $(FILES) for which gar_pathsearch returns an
#              empty list.
# Example:     If coreutils is installed but gcc isn't
#              = $(call gar_missing,cat gcc,$(PATH),%)
#              = gcc
gar_missing = $(foreach FILE,$1,$(if $(call gar_pathsearch,$(FILE),$2,$3),,$(FILE)))

#################################################################################

.BINPATTERNS = %
.LIBPATTERNS = lib%.so* lib%.a
.PYPATTERNS = %.pyc %.py
.PKGPATTERNS = %.pc
.MANPATTERNS = $(foreach i,1 2 3 4 5 6 7 8,man$i/%.$i*)

# not all systems add the usual system directorys to LD_LIBRARY_PATH
GCC_MULTIARCH = $(shell gcc -print-multiarch)
SYSLIBS = /lib:/usr/lib:/usr/local/lib$(if $(GCC_MULTIARCH),:/usr/lib/$(GCC_MULTIARCH))

MISSING_BINFILES = $(call gar_missing,$(BINFILES),$(PATH), \
			$(.BINPATTERNS))
MISSING_LIBFILES = $(call gar_missing,$(LIBFILES),$(LD_LIBRARY_PATH):$(SYSLIBS), \
			$(.LIBPATTERNS))
MISSING_PYFILES  = $(call gar_missing,$(PYFILES) ,$(PYTHONPATH), \
			$(.PYPATTERNS))
MISSING_PKGFILES = $(call gar_missing,$(PKGFILES),$(PKG_CONFIG_PATH), \
			$(.PKGPATTERNS))
MISSING_MANFILES = $(call gar_missing,$(MANFILES),$(MANPATH), \
			$(.MANPATTERNS))

MISSING_FILES = $(strip \
    $(MISSING_BINFILES) \
    $(MISSING_LIBFILES) \
    $(MISSING_PYFILES) \
    $(MISSING_PKGFILES) \
    $(MISSING_MANFILES) \
  )

# The `$(MISSING)' variable is the action that is taken if the package is not
# installed
#MISSING ?= install
MISSING ?= install-message

install: variable-install

variable-install: $(if $(MISSING_FILES),$(MISSING));

install-p: $(if $(MISSING_FILES),error)
	@printf "[$(OK)install-p$(OFF)] $(MSG)$(GARNAME) is installed$(OFF)\n"

reinstall-p: $(if $(MISSING_FILES),error)
	@printf "[$(OK)reinstall-p$(OFF)] $(MSG)$(GARNAME) is installed$(OFF)\n"

error:
	@printf "[$(ERR)install-p$(OFF)] $(MSG)$(GARNAME) is not installed$(OFF)\n"
	@exit 1

install-message:
	@printf "[$(ERR)install-deps$(OFF)] $(MSG)Please install \`$(GARNAME)' \
using a system other than GSRC.\n"
	@printf "               $(INSTALL_CMD)$(OFF)\n"
	@exit 1

fetch checksum extract configure build clean:
	@exit 0

# The rest is a little ugly, but what it does is probe the operating system to
# decide an appropriate example command for $(INSTALL_CMD)

ifeq '$(USER)' 'root'
else ifeq '$(UID)' '0'
else
SUDO = $(if $(call gar_pathsearch,sudo,$(PATH),$(.BINPATTERNS)),sudo)
endif

ifneq ($(strip $(call gar_pathsearch,apt-get,$(PATH),$(.BINPATTERNS))),)
INSTALL_CMD ?= eg: $(SUDO) apt-get install $(GARNAME) $(GARNAME)-dev
endif

ifneq ($(strip $(call gar_pathsearch,yum,$(PATH),$(.BINPATTERNS))),)
INSTALL_CMD ?= eg: $(SUDO) yum install $(GARNAME)
endif

ifneq ($(strip $(call gar_pathsearch,pacman,$(PATH),$(.BINPATTERNS))),)
INSTALL_CMD ?= eg: $(SUDO) pacman -S $(GARNAME)
endif
