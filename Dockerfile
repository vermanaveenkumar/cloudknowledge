FROM centos:latest
MAINTAINER vermanaveenkumar361@gmail.com
RUN yum install -y httpd\
 zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/yogasana.zip/var/www/html/
WORKDIR /var/www/html
RUN unzip yogasana.zip
RUN cp- -rvf yogasana/* .
RUN rm-rf yogasana yogasana.zip
CMD[*/usr/sbin/httpd","D","FOREGROUND*]
EXPOSE 80
