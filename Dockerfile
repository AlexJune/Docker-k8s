FROM amazonlinux:latest

RUN yum -y update
RUN yum -y install httpd
RUN yum -y install php
RUN systemctl enable httpd
RUN mkdir run/php-fpm

COPY ./index.php /var/html/index.php

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80
