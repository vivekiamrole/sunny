FROM ubuntu:14.04
MAINTAINER vivekkr536@gmail.com
RUN apt-get install -y apache2 \
   zip \
   unzip
 ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/shapel.zip /var/www/html
 WORKDIR /var/www/html
 RUN unzip shapel.zip
 RUN cp -vrf shapel-html /*
CMD ["apache2ctl", "-D", "FOREGROUND"]
