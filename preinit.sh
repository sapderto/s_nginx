sudo ﻿ln -s $(pwd)/conf.d/webserver.conf  /etc/nginx/sites-enabled/test.conf
sudo mv /etc/nginx/nginx.conf /etc/nginx/_nginx.backup_conf
sudo cp nginx.conf /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart
sudo ln -s gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
﻿sudo /etc/init.d/mysql start﻿
