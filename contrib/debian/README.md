
Debian
====================
This directory contains files used to package vortexad/vortexa-qt
for Debian-based Linux systems. If you compile vortexad/vortexa-qt yourself, there are some useful files here.

## vortexa: URI support ##


vortexa-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install vortexa-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your vortexa-qt binary to `/usr/bin`
and the `../../share/pixmaps/vortexa128.png` to `/usr/share/pixmaps`

vortexa-qt.protocol (KDE)

