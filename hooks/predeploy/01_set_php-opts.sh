#!/bin/bash

# pull in env variable here and switch case for includeing small or large vars
#
cp .platform/www.conf /etc/php-fpm.d/www.conf
cp .platform/aws.ini /etc/php.d/aws.ini

# update sysctl.conf and commit
echo "net.core.netdev_max_backlog = 65535" > /etc/sysctl.d/01-mycoapi.conf
echo "net.core.somaxconn = 20000" >> /etc/sysctl.d/01-mycoapi.conf
sysctl --load=/etc/sysctl.d/01-mycoapi.conf

