include ../../gar.mk

pre-configure:
	@echo -e "[$(ERR)pre-everything$(OFF)] $(MSG)$(GARNAME) is known not to build \
correctly on some systems.$(OFF)" 
	@echo -e "See TODO for more information."
	@echo -e "If you would like to try building it anyway, use the \
'FORCE_BUILD=y' option."
	@echo -e "If the build succeeds or if you find a process to fix it, \
please send an"
	@echo -e "email with a patch to bug-gsrc@gnu.org!"
	@echo
	@exit 1
