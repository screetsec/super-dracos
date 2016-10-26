#!/usr/bin/env bash

wget ftp://invisible-island.net/xterm/xterm-327.tgz
sed -i '/v0/{n;s/new:/new:kb=^?:/}' termcap &&
printf '\tkbs=\\177,\n' >> terminfo &&

TERMINFO=/usr/share/terminfo \
./configure $XORG_CONFIG     \
    --with-app-defaults=/etc/X11/app-defaults &&

make
make install &&
make install-ti
echo "Success install xterm"
