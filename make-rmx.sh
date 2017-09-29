#!/bin/sh
echo "                                                                              "
echo "     _____ _           _       _____ _____ __ __    ___   ___   ___ ___   ___ "
echo " _ _|  |  | |_ _ _ ___| |_ _ _| __  |     |  |  |  |_  | |  _| |   | | | |_  |"
echo "|_'_|  |  | . | | |   |  _| | |    -| | | |-   -|   _| |_| . |_| | |_  |_|_  |"
echo "|_,_|_____|___|___|_|_|_| |___|__|__|_|_|_|__|__|  |_____|___|_|___| |_|_|___|"
echo "                                                                              "
cd ~
echo "Installing OpenSSH Server"...
sudo apt-get --assume-yes install openssh-server
echo "Done."
echo ""
echo "Installing LAMP and PhpMyAdmin..."
sudo apt-get --assume-yes install apache2 mysql-server mysql-client php7.0 libapache2-mod-php7.0 phpmyadmin
# BEGIN --- Useless, Jekyll will remove this. Kept as an example.
# [ -f /var/www/html/index.html ] && sudo mv /var/www/html/index.html /var/www/html/index.html.bak
# sudo sh -c 'cat > /var/www/html/phpinfo.php <<EOF
# <?php phpinfo(); ?>
# EOF'
# END --- Useless, Jekyll will remove this. Kept as an example.
echo "Done."
echo ""
echo "Installing Ruby, Gems and Jekyll..."
sudo apt-get --assume-yes install ruby rubygems ruby-dev zlibc zlib1g zlib1g-dev
sudo gem install jekyll bundler github-pages
jekyll new Jekyll
cd Jekyll
sudo jekyll build -d /var/www/html/
cd ..
echo "Done."
echo ""
echo "Installing Git..."
sudo apt-get --assume-yes install git
echo "Done."
echo ""
echo "Installing Google Chrome from PPA..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
[ -f /etc/apt/sources.list.d/google-chrome.list ] && sudo rm /etc/apt/sources.list.d/google-chrome.list
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get --assume-yes install google-chrome-stable
echo "Done."
echo ""
echo "Installing antivirus software..."
sudo apt-get --assume-yes install clamav clamtk chkrootkit rkhunter  
echo "Done."
echo ""
echo "Installing Filezilla..."
sudo apt-get --assume-yes install filezilla
echo "Done."
echo ""
echo "Installing Gimp..."
sudo apt-get --assume-yes install gimp
echo "Done."
echo ""
echo "Installing Gparted..."
sudo apt-get --assume-yes install gparted
echo "Done."
echo ""
echo "Installing 7zip..."
sudo apt-get --assume-yes install p7zip-full
echo "Done."
echo ""
echo "Installing Putty..."
sudo apt-get --assume-yes install putty
echo "Done."
echo ""
echo "Installing Remmina..."
sudo apt-get --assume-yes install remmina
echo "Done."
echo ""
echo "Installing VLC (Video Lan Client)..."
sudo apt-get --assume-yes install vlc
echo "Done."
echo ""
echo "Installing Notepadqq from PPA (a wonderful Notepad++ clone)..."
echo | sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get --assume-yes install notepadqq
echo "Done."
echo ""

echo "Installing Angry IP Scanner from deb package..."
sudo apt-get install openjdk-8-jre
sudo apt-get install -f
wget https://github.com/angryip/ipscan/releases/download/3.5.1/ipscan_3.5.1_amd64.deb 
sudo dpkg -i ipscan_3.5.1_amd64.deb
rm ipscan_3.5.1_amd64.deb
sudo apt-get install -f
echo "Done."
echo ""

echo "Installing FreeFileSync from deb package..."
wget http://archive.getdeb.net/ubuntu/pool/apps/f/freefilesync/freefilesync_8.6-1~getdeb1_amd64.deb
sudo dpkg -i freefilesync_8.6-1~getdeb1_amd64.deb
rm freefilesync_8.6-1~getdeb1_amd64.deb
sudo apt-get install -f
echo "Done."
echo ""
echo "ALL DONE."
echo ""



# xUbuntuRMX 16.04.3 Software
#
# Base xubuntu 16.04.3
#
# * conky
# * docky
# * samba
# * KeePassX 0.4.3 (via deb package, hold updates)(°)
# * pCloud (via deb package)
# * Pinguy Builder 4.3-8_all_beta (via deb package)
# * Teamviewer 11 (via deb package)
# * VirtualBox 5.1.28 with Extension Pack (via deb package plus vbox-extpack)
# * Webmin 1.850 (via deb package)
# * DA AGGIUNGERE: Android SDK
# * DA AGGIUNGERE: Software tipo Speccy
#
# Note:
# 
# (°)
# echo "keepassx hold" | sudo dpkg --set-selections
# 
