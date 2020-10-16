#!/bin/sh

msg(){
    echo -e '\0033\0143'
    echo "\nCTRL + C exists docker applications\n"
    echo "\nApplication: http://localhost:8080/\n"
    echo "\nAdminer : http://localhost:8080/adminer.php\n"
    echo "\nInfo page: http://localhost:8080/info.php\n"
}


#start mysql
service mysql start 2>/dev/null
#create user
mysql -e "GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'qwerty123#' WITH GRANT OPTION;"
mysql -e "FLUSH PRIVILEGES;"
#clone adminer to home
curl -s -o /var/www/html/adminer.php -L "http://www.adminer.org/latest-mysql-en.php"

#start apache
service apache2 start 2>/dev/null

while :
do
	msg
    sleep 1    
done
