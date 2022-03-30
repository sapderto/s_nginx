#!/bin/sh
#sudo ﻿ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo cp /etc/nginx/sites-enabled/default $(pwd)/_backup_default.conf
sudo cp $(pwd)/default /etc/nginx/sites-enabled/default
sudo ln -s $(pwd)/gunicorn.conf /etc/gunicorn.d/test
sudo ln -s $(pwd)/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/nginx restart
#sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
﻿sudo /etc/init.d/mysql start﻿
