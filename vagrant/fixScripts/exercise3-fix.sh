#!/bin/bash

sudo sed -i -e '13d' /etc/apache2/sites-enabled/000-default
sudo sed -i '13iAllow from all' /etc/apache2/sites-enabled/000-default
sudo service apache2 restart
