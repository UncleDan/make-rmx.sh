#!/bin/sh
echo "                                                                              "
echo "     _____ _           _       _____ _____ __ __    ___   ___   ___ ___   ___ "
echo " _ _|  |  | |_ _ _ ___| |_ _ _| __  |     |  |  |  |_  | |  _| |   | | | |_  |"
echo "|_'_|  |  | . | | |   |  _| | |    -| | | |-   -|   _| |_| . |_| | |_  |_|_  |"
echo "|_,_|_____|___|___|_|_|_| |___|__|__|_|_|_|__|__|  |_____|___|_|___| |_|_|___|"
echo "                                                                              "
cd ~

echo "Making sure everything is up to date..."
sudo apt-get --assume-yes install openssh-server
echo "Done."
echo ""

echo "Installing OpenSSH Server..."
sudo apt-get --assume-yes install openssh-server
echo "Done."
echo

echo "Installing LAMP and PhpMyAdmin..."
sudo apt-get --assume-yes install apache2 mysql-server mysql-client php7.0 libapache2-mod-php7.0 phpmyadmin
# BEGIN --- Useless, Jekyll will remove this. Kept as an example.
# [ -f /var/www/html/index.html ] && sudo mv /var/www/html/index.html /var/www/html/index.html.bak
# sudo sh -c 'cat > /var/www/html/phpinfo.php <<EOF
# <?php phpinfo(); ?>
# EOF'
# END --- Useless, Jekyll will remove this. Kept as an example.
echo "Done."
echo

echo "Installing Ruby, Gems and Jekyll..."
sudo apt-get --assume-yes install ruby rubygems ruby-dev zlibc zlib1g zlib1g-dev
sudo gem install jekyll bundler github-pages
echo "Testing Jekyll ( http://localhost/ )..."
jekyll new Jekyll
cd Jekyll
sudo jekyll build -d /var/www/html/
cd ..
echo "Done."
echo

echo "Installing Git..."
sudo apt-get --assume-yes install git
echo "Done."
echo

echo "Installing Google Chrome from PPA..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
[ -f /etc/apt/sources.list.d/google-chrome.list ] && sudo rm /etc/apt/sources.list.d/google-chrome.list
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get --assume-yes install google-chrome-stable
echo "Done."
echo

echo "Installing antivirus software..."
sudo apt-get --assume-yes install clamav clamtk chkrootkit rkhunter  
echo "Done."
echo

echo "Installing Filezilla..."
sudo apt-get --assume-yes install filezilla
echo "Done."
echo

echo "Installing Gimp..."
sudo apt-get --assume-yes install gimp
echo "Done."
echo

echo "Installing Gparted..."
sudo apt-get --assume-yes install gparted
echo "Done."
echo

echo "Installing 7zip..."
sudo apt-get --assume-yes install p7zip-full
echo "Done."
echo

echo "Installing Putty..."
sudo apt-get --assume-yes install putty
echo "Done."
echo

echo "Installing Remmina..."
sudo apt-get --assume-yes install remmina
echo "Done."
echo

echo "Installing VLC (Video Lan Client)..."
sudo apt-get --assume-yes install vlc
echo "Done."
echo

echo "Installing Notepadqq from PPA (a wonderful Notepad++ clone)..."
echo | sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get --assume-yes install notepadqq
echo "Done."
echo

echo "Installing Angry IP Scanner 3.5.1 from deb package..."
sudo apt-get install openjdk-8-jre
sudo apt-get -f install
wget https://github.com/angryip/ipscan/releases/download/3.5.1/ipscan_3.5.1_amd64.deb 
sudo dpkg -i ipscan_3.5.1_amd64.deb
rm ipscan_3.5.1_amd64.deb
sudo apt-get -f install
echo "Done."
echo

echo "Installing FreeFileSync 8.6 from deb package..."
wget http://archive.getdeb.net/ubuntu/pool/apps/f/freefilesync/freefilesync_8.6-1~getdeb1_amd64.deb
sudo dpkg -i freefilesync_8.6-1~getdeb1_amd64.deb
rm freefilesync_8.6-1~getdeb1_amd64.deb
sudo apt-get -f install
echo "Done."
echo

echo "Installing KeePassXFreeFileSync 0.4.3 from deb package (I need to work with KDB v1.x)..."
wget http://security.ubuntu.com/ubuntu/pool/universe/k/keepassx/keepassx_0.4.3+dfsg-0.1ubuntu1.14.04.1_amd64.deb
sudo dpkg -i keepassx_0.4.3+dfsg-0.1ubuntu1.14.04.1_amd64.deb
rm keepassx_0.4.3+dfsg-0.1ubuntu1.14.04.1_amd64.deb
echo "S" | sudo apt-get -f install
echo "Locking updates (newer versions do not support KDB v1.x)..."
echo "keepassx hold" | sudo dpkg --set-selections
echo "Done."
echo

echo "Installing pCloud Client 3.1.1 from deb package..."
wget https://github.com/UncleDan/files/raw/master/pCloud_Linux_amd64_3.1.1.deb #Url in pClud site masked: using mirror
sudo dpkg -i pCloud_Linux_amd64_3.1.1.deb
rm pCloud_Linux_amd64_3.1.1.deb
echo "S" | sudo apt-get -f install
echo "Done."
echo

echo "Installing Pinguy Builder 4.3.8 (beta) from deb package..."
wget https://downloads.sourceforge.net/project/pinguy-os/ISO_Builder/pinguybuilder_4.3-8_all-beta.deb
sudo dpkg -i pinguybuilder_4.3-8_all-beta.deb
rm pinguybuilder_4.3-8_all-beta.deb
echo "S" | sudo apt-get -f install
echo "Done."
echo

echo "Installing Teamviewer 11 from deb package..."
wget http://download.teamviewer.com/download/version_11x/teamviewer_i386.deb
sudo dpkg -i teamviewer_i386.deb
rm teamviewer_i386.deb
echo "S" | sudo apt-get -f install
echo "Done."
echo

echo "Installing Webmin 1.850 from deb package..."
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.850_all.deb
sudo dpkg -i webmin_1.850_all.deb
rm webmin_1.850_all.deb
echo "S" | sudo apt-get -f install
echo "Done."
echo

echo "Installing Virtualbox 5.1.28 from deb package..."
wget http://download.virtualbox.org/virtualbox/5.1.28/virtualbox-5.1_5.1.28-117968~Ubuntu~xenial_amd64.deb
sudo dpkg -i virtualbox-5.1_5.1.28-117968~Ubuntu~xenial_amd64.deb
rm virtualbox-5.1_5.1.28-117968~Ubuntu~xenial_amd64.deb
echo "S" | sudo apt-get -f install
echo "Done."
echo

echo "Installing Blue Griffon 2.3.1 from deb package..."
wget http://bluegriffon.org/freshmeat/2.3.1/bluegriffon_2.3.1-1ubuntu1_amd64.deb
sudo dpkg -i bluegriffon_2.3.1-1ubuntu1_amd64.deb
rm bluegriffon_2.3.1-1ubuntu1_amd64.deb
echo "S" | sudo apt-get -f install
echo "Done."
echo

echo "Installing Invoicex 1.8.9 from jar package..."
sudo apt-get install openjdk-8-jre
sudo apt-get -f install
wget http://server.invoicex.it/download/setup/Invoicex_Setup_1.8.9_20161025_linux.jar 
java -jar Invoicex_Setup_1.8.9_20161025_linux.jar
rm Invoicex_Setup_1.8.9_20161025_linux.jar
echo "Done."
echo

echo "ALL DONE."
echo ""

# xUbuntuRMX 16.04.3 Software
#
# Base xubuntu 16.04.3
#
# * conky
# * docky
# * samba
# * DA AGGIUNGERE: Android SDK
# * DA AGGIUNGERE: Software tipo Speccy