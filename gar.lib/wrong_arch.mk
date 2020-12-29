include ../../gar.mk

pre-configure:
	@echo -e "[$(ERR)pre-everything$(OFF)] $(MSG)$(GARNAME) does not support \
your CPU architecture ($(GARARCH)).$(OFF)" 
	@echo
	@exit 1
