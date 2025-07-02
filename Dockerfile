FROM ubuntu:latest
RUN apt-get update -y && apt install apache2 -y
COPY app2/ /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
