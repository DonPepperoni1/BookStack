#!/bin/bash

# Nom		    : install désinstall bookstack
# Description	: permet d'installer et désinstaller bookstack en fonction des paramètres
# Utilisation   : créez le répertoire /opt/inst_bookstack/ mettre le script et le dump
#                 faire un chmod +x install_bookstack_v0.5.sh
#                 puis ./install_bookstack_v0.5.sh -i pour installer ou -d pour clean la conf existante.
# Param 1	    : -i    installer bookstack
# Param 2	    : -d    désinstaller bookstack / clean la conf
# Auteur	    : Matteo MARTINI
# Email		    : matteo.martini@protonmail.com

function printHelp() {
    echo "USAGE :   ./install_bookstack_v0.2.sh [-h] [-i] [-d]"
    echo "Changez les noms de domaine du script par le votre, changez l'ip du fichier /etc/hosts par le votre dans le script."
    echo "Faites mkdir -p /opt/inst_bookstack/ mettre le script et le dump."
    echo "Faire un chmod +x install_bookstack_v0.5.sh"
    echo "Ensuite, ./install_bookstack_v0.5.sh -i pour installer ou -d pour clean la conf existante. Pensez à lancer le script en ROOT."
    echo "Changer votre fichier hosts sur Linux -> /etc/hosts, sur Windows C:\Windows\System32\drivers\etc\hosts"
    echo "          -h          Print ce message d'aide"
    echo "          -i          installer et configurer bookstack"
    echo "          -d          clean la conf existante de bookstack"
}

function install_bookstack(){
    apt install sudo tree mc vim rsync net-tools mlocate htop screen -y

    wget https://github.com/cheat/cheat/releases/download/4.2.3/cheat-linux-amd64.gz
    gunzip cheat-linux-amd64.gz
    chmod a+x cheat-linux-amd64
    mv -v cheat-linux-amd64 /usr/local/bin/cheat

    apt install git -y
    mkdir -pv /opt/COMMUN/cheat/cheatsheets/community
    mkdir -v /opt/COMMUN/cheat/cheatsheets/personal
    cheat --init > /opt/COMMUN/cheat/conf.yml
    sed -i 's;/root/.config/; /opt/COMMUN/;' /opt/COMMUN/cheat/conf.yml
    git clone https://github.com/cheat/cheatsheets.git
    mv -v cheatsheets/[a-z]* /opt/COMMUN/cheat/cheatsheets/community

    groupadd -g 10000 commun 
    chgrp -Rv commun /opt/COMMUN/
    chmod 2770 /opt/COMMUN/cheat/cheatsheets/personal
    #find /opt/COMMUN/cheat/cheatsheets/personal -type d -exec chmod 2770 {} \;
    #find /opt/COMMUN/ -type f -exec chmod 660 {} \;

    useradd -m -G 10000 -s /bin/bash esgi
    echo -e 'esgi\nesgi' | sudo passwd esgi
    usermod -aG sudo esgi
    usermod -aG commun esgi
    echo "umask 007 " >> /home/esgi/.bashrc
    mkdir -v /home/esgi/.config 
    ln -s /opt/COMMUN/cheat /home/esgi/.config/cheat 
    chown -R esgi /home/esgi/.config
    useradd -m -G 10000 -s /bin/bash davy
    echo -e 'davy\ndavy' | sudo passwd davy
    usermod -aG sudo davy
    usermod -aG commun davy
    echo "umask 007 " >> /home/davy/.bashrc
    mkdir -v /home/davy/.config
    ln -s /opt/COMMUN/cheat /home/davy/.config/cheat 
    chown -R davy /home/davy/.config

    mkdir -v /root/.config
    ln -s /opt/COMMUN/cheat /root/.config/cheat
    mkdir /etc/skel/.config/
    ln -s /opt/COMMUN/cheat /etc/skel/.config/cheat
    echo "umask 007" >> /etc/skel/.bashrc
    cat >> /root/.bashrc << EOF
    alias ll="ls -rtl"
    alias grep="grep --color"
    alias rm="rm -vi --preserve-root"
    alias chown="chown -v --preserve-root"
    alias chmod="chmod -v --preserve-root"
    alias chgrp="chgrp -v --preserve-root"
EOF
    # Install des prérequis
    apt install nginx -y | tee -a /root/install.bookstack.log
    apt install php-mysql -y | tee -a /root/install.bookstack.log
    apt install mariadb-server -y | tee -a /root/install.bookstack.log
    apt install composer -y | tee -a /root/install.bookstack.log
    REQUIRED_BOOKSTACK_PKG="lynx php-fpm php-mbstring php-tokenizer php-gd php-xml php-curl git curl vim"
    sudo apt-get --yes install $REQUIRED_BOOKSTACK_PKG | tee -a /root/install.bookstack.log


    # Fichier de configuration du serveur Nginx
    cat /etc/nginx/sites-available/bookstack.conf << EOF
	server {
		listen 80;
		listen [::]:80;

		server_name wiki.matteo.local;
		root /var/www/bookstack/public;

		location / {
			try_files $uri $uri/ /index.php?$query_string;
		}

		location ~ \.php$ {
			include snippets/fastcgi-php.conf;
			factcgi_pass unix:/run/php/php7.4-fpm.sock;
		}
	}
EOF

    ln -s /etc/nginx/sites-available/bookstack.conf /etc/nginx/sites-enabled/

    # Configuration du /etc/hostname et /etc/hosts
    echo "BookStack" > /etc/hostname # Un seul chevron pour remplacer le contenu du fichier


    echo -e "127.0.0.1       localhost
    127.0.1.1       BookStack
    192.168.1.61     wiki.matteo.local

    # The following lines are desirable for IPv6 capable hosts
    ::1     localhost ip6-localhost ip6-loopback
    ff02::1 ip6-allnodes
    ff02::2 ip6-allrouters" > /etc/hosts
    # Ici on remplace aussi le contenu de /etc/hosts


    # Installation et configuration de la BDD
    mysql -u root << EOF
	CREATE DATABASE bookstack;
	GRANT ALL ON bookstack.* TO 'nimda'@'localhost' IDENTIFIED BY 'password';
	FLUSH PRIVILEGES;
EOF
    mysql -h localhost -u nimda --password=password bookstack < /opt/inst_bookstack/bookstack_dump.sql
    # On importe la base de données de bookstack


    # Installation et configuration de BookStack
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
    php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
    php composer-setup.php
    php -r "unlink('composer-setup.php');"
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer
    compose --version

    mkdir -p /var/www/bookstack/
    git clone https://github.com/BookStackApp/BookStack.git --branch release --single-branch /var/www/bookstack

    user=$(id -un 1000)
    chown -Rv $user:$user /var/www/bookstack
    cd /var/www/bookstack/

    chown -Rv www-data. /var/www/bookstack/storage
    chown -Rv www-data. /var/www/bookstack/public/uploads
    chown -Rv www-data. /var/www/bookstack/bootstrap/cache
    echo -e 'yes\n' | composer install --no-dev
    cd /var/www/bookstack

    cp /var/www/bookstack/.env.example /var/www/bookstack/.env
    sed -i  's;https://example.com;http://wiki.matteo.local;'  /var/www/bookstack/.env
    sed -i  's;database_database;bookstack;'  /var/www/bookstack/.env
    sed -i  's;database_username;nimda;'  /var/www/bookstack/.env
    sed -i  's;database_user_password;password;'  /var/www/bookstack/.env

    echo -e "yes/n" | php artisan key:generate
    echo -e "yes/n" | php artisan migrate
    chown -R www-data:www-data /var/www/bookstack

    systemctl restart php7.4-fpm

    nginx -t
    nginx -s reload
    systemctl restart php7.4-fpm
    clear
    lynx --accept_all_cookies http://wiki.matteo.local
    echo "Terminé !"
}


function delete_bookstack() {
    rm -rf /var/www/bookstack
    rm /etc/nginx/sites-available/bookstack.conf
    UNINSTALL_BOOKSTACK_PKG="lynx php-fpm php-mbstring php-tokenizer nginx php-mysql mariadb-server composer php-gd php-xml php-curl git curl vim"
    sudo apt-get -y purge --autoremove $UNINSTALL_BOOKSTACK_PKG
    clear
    echo "Terminé !"
}

if [ $# = 0 ] || [ $1 = "-h" ]; then
    printHelp

elif [ $1 = "-i" ]; then
    install_bookstack

elif [ $1 = "-d" ]; then
    delete_bookstack
fi
