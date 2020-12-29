# info.mk --- Proper installation of info files

# Copyright (C) 2013, 2014 Brandon Invergo <brandon@invergo.net>

# Author: Brandon Invergo <brandon@invergo.net>

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 3
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.


INFO_FILES ?= $(GARNAME).info

post-install:
	printf "[$(OK)install-info$(OFF)] $(MSG)Installing entries to the Info directory$(OFF)\n"
	if $(SHELL) -c 'install-info --version' >/dev/null; then \
		for f in $(INFO_FILES); do \
			install-info --dir-file="$(prefix)/share/info/dir" \
				"$(prefix)/share/info/$$f"; \
		done; \
	else true; fi

pre-uninstall:
	printf "[$(OK)uninstall-info$(OFF)] $(MSG)Removing entries from the Info directory$(OFF)\n"
	if $(SHELL) -c 'install-info --version' >/dev/null; then \
		for f in $(INFO_FILES); do \
			if test -e "$(prefix)/share/info/$$f"; then \
				install-info --dir-file="$(prefix)/share/info/dir" \
					--remove "$(prefix)/share/info/$$f"; \
			fi; \
		done; \
	else true; fi
