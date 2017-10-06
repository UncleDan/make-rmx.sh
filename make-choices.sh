#!/bin/sh
echo "                                                                              "
echo "     _____ _           _       _____ _____ __ __    ___   ___   ___ ___   ___ "
echo " _ _|  |  | |_ _ _ ___| |_ _ _| __  |     |  |  |  |_  | |  _| |   | | | |_  |"
echo "|_'_|  |  | . | | |   |  _| | |    -| | | |-   -|   _| |_| . |_| | |_  |_|_  |"
echo "|_,_|_____|___|___|_|_|_| |___|__|__|_|_|_|__|__|  |_____|___|_|___| |_|_|___|"
echo "                                                                              "
echo
cd ~

echo
echo
echo "BASIC PACKAGES:"
echo "7zip"
echo "Gimp"
echo "Google Chrome from PPA"
echo "OpenSSH Server"
echo "pCloud Client 3.1.1 from deb package"
echo "Teamviewer 11 from deb package"
echo "VLC (Video Lan Client)"
echo
read -r -p "Install? [Y/N] " response
echo
case "$response" in
    [yY][eE][sS]|[yY])
		echo "BASIC PACKAGES!"
        ;;
    *)
        echo "Skipping."
        ;;
esac

echo
echo
echo "DEVELOPER PACKAGES:"
echo "Angry IP Scanner 3.5.1 from deb package"
echo "Blue Griffon 2.3.1 from deb package"
echo "Filezilla"
echo "FreeFileSync 8.6 from deb package"
echo "Git"
echo "Gparted"
echo "KeePassX 0.4.3 from deb package (I need to work with KDB v1.x)"
echo "LAMP and PhpMyAdmin"
echo "Notepadqq from PPA (a wonderful Notepad++ clone)"
echo "Putty"
echo "Remmina"
echo "Ruby, Gems and Jekyll"
echo "Webmin 1.850 from deb package"
echo "antivirus software"
echo
read -r -p "Install? [Y/N] " response
echo
case "$response" in
    [yY][eE][sS]|[yY])
		echo "DEVELOPER PACKAGES!"
        ;;
    *)
        echo "Skipping."
        ;;
esac

echo
echo
echo "PINGUY BUILDER:"
echo "Pinguy Builder 4.3.8 (beta) from deb package"
echo
read -r -p "Install? [Y/N] " response
echo
case "$response" in
    [yY][eE][sS]|[yY])
		echo "PINGUY BUILDER!"
        ;;
    *)
        echo "Skipping."
        ;;
esac

echo
echo 
echo "VIRTUALBOX:"
echo "Virtualbox 5.1.28 from deb package"
echo 
read -r -p "Install? [Y/N] " response
echo
case "$response" in
    [yY][eE][sS]|[yY])
		echo "VIRTUALBOX!"
        ;;
    *)
        echo "Skipping."
        ;;
esac

echo
echo
echo "INVOICEX:"
echo "Invoicex 1.8.9 from jar package"
echo
read -r -p "Install? [Y/N] " response
echo
case "$response" in
    [yY][eE][sS]|[yY])
		echo "INVOICEX!"
        ;;
    *)
        echo "Skipping."
        ;;
esac

echo
echo
echo "ALL DONE."
