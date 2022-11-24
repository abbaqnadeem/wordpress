FROM centos/php-73-centos7

WORKDIR /wordpress

ADD . /wordpress

#ENV NODE_TLS_REJECT_UNAUTHORIZED 0  

RUN mkdir -p /var/www/html

RUN chgrp -R 0 /var/www/html/ && chmod -R g=u /var/www/html/

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
