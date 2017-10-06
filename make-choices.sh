#!/bin/sh

echo "\033[0;36m\033[1m       _    _ _                 _         _____  __  ____   __"
echo "      | |  | | |               | |       |  __ \\|  \\/  \\ \\ / /"
echo " __  _| |  | | |__  _   _ _ __ | |_ _   _| |__) | \\  / |\\ V / "
echo " \\ \\/ / |  | | '_ \\| | | | '_ \\| __| | | |  _  /| |\\/| | > <  "
echo "  >  <| |__| | |_) | |_| | | | | |_| |_| | | \\ \\| |  | |/ . \\ "
echo " /_/\\_\\\\____/ |_.__/ \\__,_|_| |_|\\__|\\__,_|_|  \\_\\_|  |_/_/ \\_\\"
echo "                                                       16.04.3\033[0m"
echo ""

cd ~

echo
echo
echo "\033[0;32m\033[1mBASIC PACKAGES:\033[0m"
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
echo "\033[0;31m\033[1mDEVELOPER PACKAGES:\033[0m"
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
echo "\033[0;31m\033[1mPINGUY BUILDER:\033[0m"
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
echo "\033[1;33m\033[1mVIRTUALBOX:\033[0m"
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
echo "\033[0;32m\033[1mINVOICEX:\033[0m"
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
echo "\033[1mALL DONE.\033[0m"
echo ""



### You can use these ANSI escape codes:
### 
### Black        0;30     Dark Gray     1;30
### Red          0;31     Light Red     1;31
### Green        0;32     Light Green   1;32
### Brown/Orange 0;33     Yellow        1;33
### Blue         0;34     Light Blue    1;34
### Purple       0;35     Light Purple  1;35
### Cyan         0;36     Light Cyan    1;36
### Light Gray   0;37     White         1;37
### And then use them like this in your script:
### 
### #    .---------- constant part!
### #    vvvv vvvv-- the code from above
### RED='\033[0;31m'
### NC='\033[0m' # No Color
### printf "I ${RED}love${NC} Stack Overflow\n"
### which prints love in red.
### 
### From @james-lim's comment, if you are using the echo command, be sure to use the -e flag to allow backslash escapes.
### 
### # Continued from above example
### echo -e "I ${RED}love${NC} Stack Overflow"
### (don't add "\n" when using echo unless you want to add additional empty line)



### In theory like so:
### 
### # BOLD
### `$ echo -e "\033[1mThis is a BOLD line\033[0m"`
### This is a BOLD line
### 
### # Using tput
### tput bold 
### echo "This" #BOLD
### tput sgr0 #Reset text attributes to normal without clear.
### echo "This" #NORMAL
### 
### # UNDERLINE
### $ echo -e "\033[4mThis is a underlined line.\033[0m"
### This is a underlined line. 
### But in practice it may be interpreted as "high intensity" color instead.
### 
### (source: http://unstableme.blogspot.com/2008/01/ansi-escape-sequences-for-writing-text.html)