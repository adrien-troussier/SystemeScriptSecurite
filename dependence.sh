sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install apache2 -y && sudo systemctl start apache2 && sudo systemctl enable apache2
sudo apt-get install mariadb-server -y && sudo systemctl start mariadb && sudo systemctl enable mariadb
sudo apt-get install php libapache2-mod-php php-mysql -y
sudo apt-get install phpmyadmin -y
sudo apt-get install npm && sudo apt-get install nodejs -y && sudo nodejs -v && sudo npm -v
sudo apt-get install git -y

