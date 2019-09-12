FROM php:7.2.1-apache
MAINTAINER maarten.schermer@naturalis.nl

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

COPY . /tmp

RUN chmod +x /tmp/bootstrap.sh
ENTRYPOINT [ "/tmp/bootstrap.sh" ]
