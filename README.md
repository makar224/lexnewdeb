#lexnewdeb
The debian package building files for the LexNew application

Edited files:
* build.sh - main build script of the deb file
* lexnew/DEBIAN/control - main deb file
* lexnew/DEBIAN/config - application configure/reconfigure script
* lexnew/DEBIAN/postinst - application postinstalling script
* lexnew/DEBIAN/postrm - application postremoving script
* lexnew/DEBIAN/templates - installing dialogs file
* changelog - is edited in root and archived into lexnew/usr/share/doc/lexnew in the build.sh
* lexnew/usr/share/doc/lexnew/copyright - deploing copyright file
* lexnew/usr/share/doc/lexnew/README.Debian - deploing README file
* lexnew/usr/share/applications/lexnew.desktop - deploing desktop file




*Можно задать переменную QT_QPA_PLATFORM_PLUGIN_PATH в поле Exec .desktop-файла (пример - audacity.desktop)
