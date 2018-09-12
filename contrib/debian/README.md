
Debian
====================
This directory contains files used to package andsd/ands-qt
for Debian-based Linux systems. If you compile andsd/ands-qt yourself, there are some useful files here.

## ands: URI support ##


ands-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install ands-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your ands-qt binary to `/usr/bin`
and the `../../share/pixmaps/ands128.png` to `/usr/share/pixmaps`

ands-qt.protocol (KDE)

