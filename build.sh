#!/bin/bash

mkdir -p lexnew/opt/lexnew
cp LexNew lexnew/opt/lexnew
chrpath -d lexnew/opt/lexnew/LexNew
objcopy --strip-debug --strip-unneeded lexnew/opt/lexnew/LexNew
chmod -R 0755 lexnew/opt

##mkdir -p lexnew/usr/lib/qt/plugins/platforms
##cp lib/libqxcb.so lexnew/usr/lib/qt/plugins/platforms

#cp qt.conf_rename lexnew/opt/lexnew/qt.conf
#chmod 0644 lexnew/opt/lexnew/qt.conf

#mkdir -p lexnew/usr/share/applications
#mkdir -p lexnew/usr/share/doc/lexnew
#
#chmod -R 0755 lexnew/usr
#
#chmod -x lexnew/usr/share/icons/hicolor/48x48/apps/lexnew.png

##cp lexnew_profile.sh lexnew/etc/profile.d
##chmod 0644 lexnew/etc/profile.d/lexnew_profile.sh

iconv -f ASCII -t UTF-8 changelog -o lexnew/usr/share/doc/lexnew/changelog.Debian
##chmod a-x lexnew/usr/share/doc/lexnew/changelog.Debian
gzip -9nf lexnew/usr/share/doc/lexnew/changelog.Debian
##gzip -cn package/DEBIAN/changelog > package/usr/share/doc/package/changelog.Debian.gz
chmod 0644 lexnew/usr/share/doc/lexnew/changelog.Debian.gz

#cp copyright README.Debian lexnew/usr/share/doc/lexnew
#cp lexnew.desktop lexnew/usr/share/applications
#chmod 0644 lexnew/usr/share/doc/lexnew/copyright
#chmod 0644 lexnew/usr/share/doc/lexnew/README.Debian
#chmod 0644 lexnew/usr/share/applications/lexnew.desktop

fakeroot dpkg-deb --build ./lexnew
#fakeroot dpkg-buildpackage --build=binary
#mv package.deb lexnew_1.0-1_amd64.deb
#lintian lexnew_1.0-1_amd64.deb
lintian lexnew.deb

