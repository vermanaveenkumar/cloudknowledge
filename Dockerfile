FROM centos:latest
MAINTAINER naveenk103@gmail.com
RUN yum install -y httpd\
 zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip/var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp-rvf markups-kindle/* .
RUN rm-rf_MACOSX markups-kindle kindle.zip
CMD[*/usr/sbin/httpd","D","FOREGROUND*]
EXPOSE 80
