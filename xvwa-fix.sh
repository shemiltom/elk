#!/bin/bash
sudo mysql -e "CREATE DATABASE IF NOT EXISTS xvwa; CREATE USER IF NOT EXISTS 'xvwa'@'localhost' IDENTIFIED BY 'Xvwa@12345'; GRANT ALL PRIVILEGES ON xvwa.* TO 'xvwa'@'localhost'; FLUSH PRIVILEGES;"
sudo sed -i -E 's/^\$user *= *.*;/$user = "xvwa";/; s/^\$pass *= *.*;/$pass = "Xvwa@12345";/' /var/www/html/xvwa/config.php
grep -n 'user\|pass' /var/www/html/xvwa/config.php
sudo systemctl restart apache2
