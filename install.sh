#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-passwdchange
	rm -f /usr/lib/sparkyusers/passwdchange.desktop
	rm -f /usr/share/applications/sparky-passwdchange.desktop
	rm -f /usr/share/menu/sparky-passwdchange
	rm -rf /usr/share/sparky/sparky-passwdchange
else
	cp bin/* /usr/bin/
	if [ ! -d /usr/lib/sparkyusers ]; then
		mkdir -p /usr/lib/sparkyusers
	fi
	cp share/sparky-passwdchange.desktop /usr/lib/sparkyusers/
	cp share/sparky-passwdchange.desktop /usr/share/applications/
	cp share/sparky-passwdchange /usr/share/menu/
	if [ ! -d /usr/share/sparky/sparky-passwdchange ]; then
		mkdir -p /usr/share/sparky/sparky-passwdchange
	fi
	cp lang/* /usr/share/sparky/sparky-passwdchange/
fi
