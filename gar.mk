# Top-level make includes for GARStow ports.
#
# Copyright (C) 2012, 2013, 2014 Brandon Invergo <brandon@invergo.net>
# Copyright (C) 2010, 2011 Brian Gough
# Copyright (C) 2004, 2005, 2006, 2007, 2008, 2009, 2010 Adam Sampson
# Copyright (C) 2001 Nick Moffitt
#
# Redistribution and/or use, with or without modification, is
# permitted.  This software is without warranty of any kind.  The
# author(s) shall not be liable in the event that use of the
# software causes damage.

ifneq "$(strip $(USE))" ""
# Rather than including this file, pull in a library file instead.

USE_NEXT := $(firstword $(USE))
USE := $(wordlist 2,$(words $(USE)),$(USE))
include ../../gar.lib/$(USE_NEXT)

else
# No library files to include.

# Comment this out to make much verbosity
#.SILENT:

define newline


endef

GARDIR ?= ../..
GARDIR_ABSOLUTE := $(shell cd $(GARDIR) && pwd)
GARPKGDIR ?= ../..
PKGGROUPS ?= gnu gnome gnustep external
PKGGROUPDIRS ?= $(foreach GROUP,$(PKGGROUPS),$(GARPKGDIR)/$(GROUP))
SCRIPTSDIR = $(GARDIR_ABSOLUTE)/gar.scripts
TEMPDIR = $(GARDIR_ABSOLUTE)/gar.tmp
FILEDIR ?= files
DOWNLOADDIR ?= download
COOKIEDIR ?= cookies/$(DISTNAME)$(strip $(GARPROFILE))
WORKDIR ?= work
LOGDIR ?= logs
WORKSRC ?= $(WORKDIR)/$(DISTNAME)
EXTRACTDIR ?= $(WORKDIR)
SCRATCHDIR ?= tmp
CHECKSUM_FILE ?= sha256sums
CHECKSUM_CMD = $(if $(findstring sha256,$(CHECKSUM_FILE)),sha256sum,md5sum)
MANIFEST_FILE ?= manifest
GPG_KEYRING ?= ./gpg-keyring
packagesdir ?= $(prefix)/packages
SRCDIR ?= $(prefix)/src

# When we use WORKOBJ, we need to know if it's been changed from the default,
# and know how to get back out of it to the port dir.
WORKOBJ ?= $(WORKSRC)
WORKOBJ_CHANGED_P = $(filter-out $(WORKSRC),$(WORKOBJ))
LEAVE_WORKOBJ = $(subst $(strip ) ,/,$(patsubst %,..,$(subst /, ,$(WORKOBJ))))

UPSTREAMNAME ?= $(strip $(GARNAME))
DISTNAME ?= $(UPSTREAMNAME)-$(strip $(GARVERSION))

ALLFILES ?= $(DISTFILES) $(PATCHFILES) $(SIGFILES)

OLDVERSIONS ?= $(subst $(strip $(GARNAME))-,,$(filter-out $(DISTNAME),$(notdir $(wildcard $(packagesdir)/$(strip $(GARNAME))-*))))

# For rules that do nothing, display what dependencies they
# successfully completed
DONADA = @printf "[$(OK)$@$(OFF)] $(MSG)Complete.  Finished rules: $(OFF)$+\n"

# TODO: write a stub rule to print out the name of a rule when it
# *does* do something, and handle indentation intelligently.

# Default sequence for "all" is:  fetch checksum extract patch configure build
all: build
	$(DONADA)


#################### DIRECTORY MAKERS ####################

# This is to make dirs as needed by the base rules
$(sort $(DOWNLOADDIR) $(COOKIEDIR) $(LOGDIR) $(WORKSRC) $(WORKDIR) $(EXTRACTDIR) $(FILEDIR) $(SCRATCHDIR)):
	if test -d $@; then : ; else \
		mkdir -p $@; \
	fi

$(COOKIEDIR)/%:
	if test -d $@; then : ; else \
		mkdir -p $@; \
	fi


# include the configuration file to override any of these variables
include $(GARDIR)/config.mk
include $(GARDIR)/gar.conf.mk
include $(GARDIR)/gar.env.mk
include $(GARDIR)/gar.master.mk
include $(GARDIR)/gar.lib.mk
-include $(GARDIR)/gar.site.mk

# These stubs are wildcarded, so that the port maintainer can
# define something like "pre-configure" and it won't conflict,
# while the configure target can call "pre-configure" safely even
# if the port maintainer hasn't defined it.
#
# in addition to the pre-<target> rules, the maintainer may wish
# to set a "pre-everything" rule, which runs before the first
# actual target.
pre-%:
	@true

post-%:
	@true

custom-%:
	@true

# ========================= MAIN RULES =========================
# The main rules are the ones that the user can specify as a
# target on the "make" command-line.  Currently, they are:
#	fetch-list fetch checksum makesum extract checkpatch patch
#	build install reinstall uninstall package
# (some may not be complete yet).
#
# Each of these rules has dependencies that run in the following
# order:
# 	- run the previous main rule in the chain (e.g., install
# 	  depends on build)
#	- run the pre- rule for the target (e.g., configure would
#	  then run pre-configure)
#	- generate a set of files to depend on.  These are typically
#	  cookie files in $(COOKIEDIR), but in the case of fetch are
#	  actual downloaded files in $(DOWNLOADDIR)
# 	- run the post- rule for the target
#
# The main rules also run the $(DONADA) code, which prints out
# what just happened when all the dependencies are finished.

pkg-info:
	@printf "$(MSG)Name:$(OFF)        $(NAME)\n"
	@printf "$(MSG)Version:$(OFF)     $(GARVERSION)$(if $(PATCHNUM),-$(strip $(PATCHNUM)))\n"
	@printf "$(MSG)URL:$(OFF)         $(subst %,%%,$(HOME_URL))\n"
	@printf "$(MSG)Description:$(OFF)\n"
	@printf ' $(if $(BLURB),$(subst %,%%,$(subst $(newline),\n ,$(BLURB))), $(DESCRIPTION))\n'
	@($(MAKE) install-p >/dev/null 2>/dev/null && \
		printf "$(MSG)Status$(OFF):      installed (stowed)\n") || \
		($(MAKE) reinstall-p >/dev/null 2>/dev/null && \
			printf "$(MSG)Status:$(OFF)      installed (not stowed)\n") || \
			printf "$(MSG)Status:$(OFF)      not installed\n"

pkg-info-curt:
	@printf "$(OK)$(lastword $(subst /, ,$(dir $(shell pwd))))/$(MSG2)$(GARNAME) $(OFF)$(GARVERSION)\n"
	@printf " $(DESCRIPTION)\n"

# pkg-rec: generate GNU Recutils-friendly package listings. In other words, this
# output is more easily machine-readable than that of pkg-info
pkg-rec:
	@printf "Garname: $(GARNAME)\n"
	@printf "Name: $(NAME)\n"
	@printf "Upstream_name: $(UPSTREAMNAME)\n"
	@printf "Version: $(GARVERSION)\n"
	@printf "Home_URL: $(subst %,%%,$(HOME_URL))\n"
	@printf "Download_URL: $(subst %,%%,$(firstword $(MASTER_SITES))$(MASTER_SUBDIR))\n"
	@printf "Description: $(DESCRIPTION)\n"
	@printf 'Blurb: $(subst %,%%,$(subst $(newline),\n+ ,$(BLURB)))\n'
	@printf "Directory: $(shell basename `dirname $(shell pwd)`)\n"
	@for i in $(BUILDDEPS); do printf "Build_dep: $$i\n"; done
	@for i in $(LIBDEPS); do printf "Lib_dep: $$i\n"; done
	@for i in $(TESTDEPS); do printf "Test_dep: $$i\n"; done

# fetch-list	- Show list of files that would be retrieved by fetch.
# NOTE: DOES NOT RUN pre-everything!
fetch-list:
	@printf "$(MSG)Name:$(OFF)     $(GARNAME)\n"
	@printf "$(MSG)Version:$(OFF)  $(GARVERSION)\n"
	@printf "$(MSG)Location:$(OFF) $(subst %,%%,$(firstword $(MASTER_SITES))$(MASTER_SUBDIR))\n"
	@printf "$(MSG)Distribution files:$(OFF)\n"
	@for i in $(DISTFILES); do printf "          $$i\n"; done
	@printf "$(MSG)Patch files:$(OFF)\n"
	@for i in $(PATCHFILES); do printf "	  $$i\n"; done
	@printf "$(MSG)Signature files:$(OFF)\n"
	@for i in $(SIGFILES); do printf "	  $$i\n"; done
	@printf "$(MSG)Dependencies:$(OFF) \n"
	@for i in $(LIBDEPS) $(BUILDDEPS) $(if $(USE_TESTS),$(TESTDEPS),) ; do printf "          $$i\n"; done

# fetch			- Retrieves $(DISTFILES) (and $(PATCHFILES) if defined)
#				  into $(DOWNLOADDIR) as necessary.
fetch: pre-everything custom-pre-everything $(COOKIEDIR) $(DOWNLOADDIR) $(addprefix dep-$(GARDIR)/,$(FETCHDEPS)) pre-fetch custom-pre-fetch $(addprefix $(DOWNLOADDIR)/,$(ALLFILES)) post-fetch custom-post-fetch
	$(DONADA)

# returns true if fetch has completed successfully, false
# otherwise
fetch-p:
	$(foreach COOKIEFILE,$(addprefix $(COOKIEDIR)/dep-$(GARDIR)/,$(FETCHDEPS)), test -e $(COOKIEFILE) ;)

# checksum		- Use $(CHECKSUMFILE) to ensure that your
# 				  distfiles are valid.
checksum: fetch pre-checksum custom-pre-checksum $(addprefix checksum-,$(filter-out $(NOCHECKSUM),$(ALLFILES))) post-checksum custom-post-checksum
	$(DONADA)

# returns true if checksum has completed successfully, false
# otherwise
checksum-p:
	$(foreach COOKIEFILE,$(addprefix $(COOKIEDIR)/checksum-,$(filter-out $(NOCHECKSUM),$(ALLFILES))), test -e $(COOKIEFILE) ;)

# makesum		- Generate distinfo (only do this for your own ports!).
makesum: fetch $(addprefix $(DOWNLOADDIR)/,$(filter-out $(NOCHECKSUM),$(ALLFILES))) checksig
	if test "x$(addprefix $(DOWNLOADDIR)/,$(filter-out $(NOCHECKSUM),$(ALLFILES)))" != "x"; then \
		$(CHECKSUM_CMD) $(addprefix $(DOWNLOADDIR)/,$(filter-out $(NOCHECKSUM),$(ALLFILES))) > $(CHECKSUM_FILE); \
	fi

# I am always typing this by mistake
makesums: makesum

# checksig      - Use signatures in $(SIGFILES) to check downloaded files.
checksig: fetch $(COOKIEDIR) pre-checksig custom-pre-checksig $(addprefix checksig-,$(SIGFILES)) post-checksig custom-post-checksig
	$(DONADA)

checksig-p:
	$(foreach COOKIEFILE,$(addprefix $(COOKIEDIR)/checksig-,$(SIGFILES)), test -e $(COOKIEFILE) ;)

# garchive      - Copy downloaded files to $(GARCHIVEDIR)
garchive: checksum $(COOKIEDIR) pre-garchive custom-pre-garchive $(addprefix garchive-,$(ALLFILES))  post-garchive custom-post-garchive
	$(DONADA)

# extract		- Unpacks $(DISTFILES) into $(EXTRACTDIR) (patches are "zcatted" into the patch program)
extract: garchive $(EXTRACTDIR) $(COOKIEDIR) $(addprefix dep-$(GARDIR)/,$(EXTRACTDEPS)) pre-extract custom-pre-extract $(addprefix extract-,$(filter-out $(NOEXTRACT),$(DISTFILES))) post-extract custom-post-extract
	$(DONADA)

# returns true if extract has completed successfully, false
# otherwise
extract-p:
	$(foreach COOKIEFILE,$(addprefix $(COOKIEDIR)/extract-,$(filter-out $(NOEXTRACT),$(DISTFILES))), test -e $(COOKIEFILE) ;)

# patch			- Apply any provided patches to the source.
patch: extract $(WORKSRC) pre-patch custom-pre-patch $(addprefix patch-,$(PATCHFILES)) post-patch custom-post-patch
	$(DONADA)

# returns true if patch has completed successfully, false
# otherwise
patch-p:
	$(foreach COOKIEFILE,$(addprefix $(COOKIEDIR)/patch-,$(PATCHFILES)), test -e $(COOKIEFILE) ;)

# makepatch		- Grab the upstream source and diff against $(WORKSRC).  Since
# 				  diff returns 1 if there are differences, we remove the patch
# 				  file on "success".  Goofy diff.
makepatch: $(SCRATCHDIR) $(FILEDIR) $(FILEDIR)/gar-base.diff
	$(DONADA)

# this takes the changes you've made to a working directory,
# distills them to a patch, updates the checksum file, and tries
# out the build (assuming you've listed the gar-base.diff in your
# PATCHFILES).  This is way undocumented.  -NickM
beaujolais: makepatch makesum clean build
	$(DONADA)

# Provide PRE_ and POST_ variables for each of the scripts types.
# This is because it's useful to default the main _SCRIPTS variables to
# something (often something complicated) in a library .mk file, but some ports
# still want to have custom scripts.
ALL_CONFIGURE_SCRIPTS = $(PRE_CONFIGURE_SCRIPTS) $(CONFIGURE_SCRIPTS) $(POST_CONFIGURE_SCRIPTS)
ALL_BUILD_SCRIPTS = $(PRE_BUILD_SCRIPTS) $(BUILD_SCRIPTS) $(POST_BUILD_SCRIPTS)
ALL_TEST_SCRIPTS = $(PRE_TEST_SCRIPTS) $(TEST_SCRIPTS) $(POST_TEST_SCRIPTS)
ALL_INSTALL_SCRIPTS = $(PRE_INSTALL_SCRIPTS) $(INSTALL_SCRIPTS) $(POST_INSTALL_SCRIPTS)
HELP_SCRIPTS ?=

# help-config: display configuration/installation options, ie via ./configure --help
help-config: extract $(addprefix help-,$(HELP_SCRIPTS))
	$(DONADA)


# configure		- Runs either GNU configure, one or more local
# 				  configure scripts or nothing, depending on
# 				  what's available.
configure: patch $(addprefix dep-$(GARDIR)/,$(LIBDEPS) $(BUILDDEPS) $(if $(USE_TESTS),$(TESTDEPS),)) $(addprefix checkdep-,$(filter-out $(CHECKDEP_IGNORE),$(CHECKDEP_TARGETS))) pre-configure custom-pre-configure $(addprefix configure-,$(ALL_CONFIGURE_SCRIPTS)) post-configure custom-post-configure
	$(DONADA)

# returns true if configure has completed successfully, false
# otherwise
configure-p:
	$(foreach COOKIEFILE,$(addprefix $(COOKIEDIR)/configure-,$(ALL_CONFIGURE_SCRIPTS)), test -e $(COOKIEFILE) ;)

# build			- Actually compile the sources.
build: configure pre-build custom-pre-build $(addprefix build-,$(ALL_BUILD_SCRIPTS)) post-build custom-post-build
	$(DONADA)

# returns true if build has completed successfully, false
# otherwise
build-p:
	$(foreach COOKIEFILE,$(addprefix $(COOKIEDIR)/build-,$(ALL_BUILD_SCRIPTS)), test -e $(COOKIEFILE) ;)

# test          - Run a package's self-tests
test: build pre-test custom-pre-test $(addprefix test-,$(ALL_TEST_SCRIPTS)) post-test custom-post-test
	$(DONADA)

# I am always typing this by mistake - BJG
check: test

# returns true if test has completed successfully, false
# otherwise
test-p:
	$(foreach COOKIEFILE,$(addprefix $(COOKIEDIR)/test-,$(ALL_TEST_SCRIPTS)), test -e $(COOKIEFILE) ;)

# install		- Install the results of a build.
install: $(if $(USE_TESTS),test,build) $(addprefix dep-$(GARDIR)/,$(INSTALLDEPS)) prepare-install pre-install custom-pre-install $(addprefix install-,$(ALL_INSTALL_SCRIPTS)) finish-install pre-stow custom-pre-stow $(addprefix sysinstall-,$(filter-out $(SYSINSTALL_IGNORE),$(SYSINSTALL_TARGETS))) post-install custom-post-install
	$(DONADA)

# returns true if install has completed successfully, false
# otherwise
install-p:
	test -h $(dotgardir)/VERSION && test "`readlink $(dotgardir)/VERSION`" = $(PACKAGENAME)

reinstall-p:
	@test -d $(packagesdir)/$(PACKAGENAME)

reinstall: $(addprefix dep-$(GARDIR)/,$(LIBDEPS)) $(addprefix sysinstall-,$(filter-out $(SYSINSTALL_IGNORE),$(SYSINSTALL_TARGETS)))

install-src: clean extract
	@printf "[$(OK)install-src$(OK)] $(MSG)Installing $(GARNAME)-$(GARVERSION) source code$(OFF)\n"
	mkdir -p $(SRCDIR)/$(strip $(GARNAME))-$(strip $(GARVERSION))
	cp -r $(WORKSRC)/* $(SRCDIR)/$(strip $(GARNAME))-$(strip $(GARVERSION))
	$(MAKECOOKIE)

install-src-p:
	@test -d $(SRCDIR)/$(strip $(GARNAME))-$(strip $(GARVERSION))

uninstall-src:
	@printf "[$(OK)uninstall-src$(OK)] $(MSG)Uninstalling $(GARNAME)-$(GARVERSION) source code$(OFF)\n"
	[ -d $(SRCDIR)/$(strip $(GARNAME))-$(strip $(GARVERSION)) ] && \
		rm -rvf $(SRCDIR)/$(strip $(GARNAME))-$(strip $(GARVERSION))
	$(MAKECOOKIE)

uninstall-src-old:
	for v in $(OLDVERSIONS); do \
		$(MAKE) uninstall-src GARVERSION=$$v; \
	done

# uninstall		- Remove the installation.
uninstall: pre-uninstall custom-pre-uninstall sysinstall-uninstall post-uninstall custom-post-uninstall
	$(DONADA)

uninstall-pkg: sysinstall-uninstall-pkg
	$(DONADA)

uninstall-pkg-old:
	for v in $(OLDVERSIONS); do \
		$(MAKE) uninstall-pkg GARVERSION=$$v; \
	done

# Update a package: clean out the old stuff, download a new version,
# rebuild the checksums and install it.
update:
	$(MAKE) clean
	$(MAKE) makesums
	$(MAKE) install

# Install a package only if the source version is not the currently-installed
# version.
maybe-install:
	$(MAKE) install-p >/dev/null 2>&1 || $(MAKE) install

# Check in a trivially-updated package.
ci:
	bzr commit . -m 'update $(GARNAME) to $(GARVERSION)'

# Automatically find dependencies (after a configure).
find-deps:
	$(PKG_CONFIG) --fpc-dump

check-deps:
	$(PKG_CONFIG) --fpc-check $(GARNAME)

# Some extra dependency rules
DEPS=$(LIBDEPS) $(BUILDDEPS) $(if $(USE_TESTS),$(TESTDEPS),)

dep-list:
	@echo $(DEPS)

checkdeps: $(addprefix checkdep-$(GARDIR)/,$(LIBDEPS) $(BUILDDEPS) $(if $(USE_TESTS),$(TESTDEPS),) $(INSTALLDEPS)) checkdep-users checkdep-groups
	$(DONADA)

checkdep-$(GARDIR)/%:
	$(MAKE) -C $(call pathsearch,$*,$(DEPPATH)) fetch-list

install-deps: $(addprefix dep-$(GARDIR)/,$(LIBDEPS) $(BUILDDEPS) $(if $(USE_TESTS),$(TESTDEPS),) $(INSTALLDEPS))
	$(DONADA)


# The clean rule.  It must be run if you want to re-download a
# file after a successful checksum (or just remove the checksum
# cookie, but that would be lame and unportable).
clean:
	@printf "[$(OK)clean$(OFF)] $(MSG)Removing working files and directories$(OFF)\n"
	rm -rf $(DOWNLOADDIR) $(COOKIEDIR) $(LOGDIR) $(WORKSRC) $(WORKDIR) $(EXTRACTDIR) $(SCRATCHDIR) $(SCRATCHDIR)-$(COOKIEDIR) *~

# these targets do not have actual corresponding files
.PHONY: all info fetch-list fetch checksum makesum garchive extract patch makepatch configure build test install clean beaujolais update help install-src uninstall-src

# A logging version of the rules, e.g. make build-log, respawns and sends output to $(LOGDIR)
%-log: $(LOGDIR)
	$(MAKE) $*-p >/dev/null 2>&1 || $(MAKE) $* >$(LOGDIR)/$*.log 2>&1

test-logs:
	for f in `find . -name 'test*.log'` ; do \
		printf "$(MSG)===> test log start: $$f <===$(OFF)\n" ; \
		cat $$f ; \
		printf "$(MSG)===> test log end: $$f <===\n$(OFF)\n" ;  \
	done

.PHONY: $(addsuffix fetch checksum extract patch configure build test install,-log)

.NOTPARALLEL:

endif
