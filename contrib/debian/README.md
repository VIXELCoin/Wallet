
Debian
====================
This directory contains files used to package vixeld/vixel-qt
for Debian-based Linux systems. If you compile vixeld/vixel-qt yourself, there are some useful files here.

## vixel: URI support ##


vixel-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install vixel-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your vixel-qt binary to `/usr/bin`
and the `../../share/pixmaps/vixel128.png` to `/usr/share/pixmaps`

vixel-qt.protocol (KDE)

