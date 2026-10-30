sudo sed -i '0,/<?php/s//<?php\nmysqli_report(MYSQLI_REPORT_OFF);/' /var/www/html/xvwa/config.php
