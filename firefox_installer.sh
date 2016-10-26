#!/usr/bin/env bash

echo "Installing firefox"
# install autoconf
wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.13.tar.gz
tar xvf autoconf-2.13.tar.gz
cd autoconf-2.13
patch -Np1 -i autoconf-2.13-consolidated_fixes-1.patch
mv -v autoconf.texi autoconf213.texi 
rm -v autoconf.info 
./configure --prefix=/usr --program-suffix=2.13
make && make install
cd ../

# install nspr
wget https://ftp.mozilla.org/pub/mozilla.org/nspr/releases/v4.13.1/src/nspr-4.13.1.tar.gz
cd nspr-4.13.1/nspr
sed -ri 's#^(RELEASE_BINS =).*#\1#' pr/src/misc/Makefile.in && sed -i 's#$(LIBRARY) ##' config/rules.mk && ./configure --prefix=/usr --with-mozilla --with-pthreads $([ $(uname -m) = x86_64 ] && echo --enable-64bit) && make && make install
cd ../../

# install nss
wget https://ftp.mozilla.org/pub/mozilla.org/security/nss/releases/NSS_3_27_1_RTM/src/nss-3.27.1.tar.gz
tar xvf nss-3.27.1.tar.gz
cd nss-3.27.1
patch -Np1 -i nss-3.27.1-standalone-1.patch
cd nss
make -j1 BUILD_OPT=1 NSPR_INCLUDE_DIR=/usr/include/nspr/ USE_SYSTEM_ZLIB=1 ZLIB_LIBS=-lz  $([ $(uname -m) = x86_64 ] && echo USE_64=1) $([ -f /usr/include/sqlite3.h ] && echo NSS_USE_SYSTEM_SQLITE=1)
install -v -m755 Linux*/lib/*.so /usr/lib
install -v -m644 Linux*/lib/{*.chk,libcrmf.a} /usr/lib
install -v -m755 -d /usr/include/nss
cp -v -RL {public,private}/nss/* /usr/include/nss
chmod -v 644 /usr/include/nss/*
install -v -m755 Linux*/bin/{certutil,nss-config,pk12util} /usr/bin/
install -v -m644 Linux*/lib/pkgconfig/nss.pc /usr/lib/pkgconfig
cd ../../

# install libvpx
wget http://storage.googleapis.com/downloads.webmproject.org/releases/webm/libvpx-1.6.0.tar.bz2
tar xvf libvpx-1.6.0.tar.bzip.bz2
cd libvpx-1.6.0
sed -i 's/cp -p/cp/' build/make/Makefile
mkdir libvpx-build && cd libvpx-build
../configure --prefix=/usr/ --enable-shared --disable-static
make && make install
cd ../../

# upgrade sqlite
wget http://sqlite.org/2016/sqlite-autoconf-3150000.tar.gz
tar xvf sqlite-autoconf-3150000.tar.gz
cd sqlite-autoconf-3150000
./configure --prefix=/usr --disable-static CFLAGS="-g -O2 -DSQLITE_ENABLE_FTS3=1 -DSQLITE_ENABLE_COLUMN_METADATA=1 -DSQLITE_ENABLE_UNLOCK_NOTIFY=1 -DSQLITE_SECURE_DELETE=1 -DSQLITE_ENABLE_DBSTAT_VTAB=1"
make && make install
cd ../

# install firefox
wget https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/49.0.1/source/firefox-49.0.1.source.tar.xz
tar xvf firefox-49.0.1.source.tar.xz
cd firefox-49.0.1
cat > mozconfig << "EOF"
ac_add_options --disable-dbus
ac_add_options --disable-necko-wifi
ac_add_options --enable-default-toolkit=cairo-gtk2
ac_add_options --disable-gconf
ac_add_options --enable-system-sqlite
ac_add_options --with-system-libevent
ac_add_options --with-system-libvpx
ac_add_options --with-system-nspr
ac_add_options --with-system-nss
ac_add_options --with-system-icu
ac_add_options --prefix=/usr
ac_add_options --enable-application=browser
ac_add_options --disable-crashreporter
ac_add_options --disable-updater
ac_add_options --disable-tests
ac_add_options --enable-optimize
ac_add_options --enable-gio
ac_add_options --enable-official-branding
ac_add_options --enable-safe-browsing
ac_add_options --enable-url-classifier
ac_add_options --enable-system-ffi
ac_add_options --enable-system-pixman
ac_add_options --with-pthreads
ac_add_options --with-system-bz2
ac_add_options --with-system-jpeg
ac_add_options --with-system-png
ac_add_options --with-system-zlib 
mk_add_options MOZ_OBJDIR=@TOPSRCDIR@/firefox-build-dir
EOF
SHELL=/bin/bash
export CFLAGS_HOLD=$CFLAGS
export CXXFLAGS_HOLD=$CXXFLAGS
export CFLAGS+=" -fno-delete-null-pointer-checks -fno-lifetime-dse -fno-schedule-insns2"
export CXXFLAGS+=" -fno-delete-null-pointer-checks -fno-lifetime-dse -fno-schedule-insns2"
make -f client.mk
make -f client.mk install INSTALL_SDK=
chown -R 0:0 /usr/lib/firefox-49.0.1
mkdir -pv  /usr/lib/mozilla/plugins
ln -sfv ../../mozilla/plugins /usr/lib/firefox-49.0.1/browser
echo "Success install firefox on your system"
