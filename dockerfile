FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
EXPOSE 80
VOLUME /var/www/html
COPY ./index.html /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
