FROM centos/php-73-centos7

WORKDIR /wordpress

ADD . /wordpress

RUN mkdir -p /var/www/html

RUN chgrp -R 0 /var/www/html/ && chmod -R g=u /var/www/html/
