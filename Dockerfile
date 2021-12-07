# This is a template Dockerfile for creating a new image.  
# See the README for a complete description of how you create derivative images.

FROM sudokeys/grav
MAINTAINER Luis Almeida

WORKDIR /var/www/html

RUN bin/gpm --no-interaction install simplesearch  && \
    bin/gpm --no-interaction install learn2 && \
    bin/gpm --no-interaction install langswitcher

COPY ./user/config /var/www/html/user/config
COPY ./user/pages /var/www/html/user/pages
COPY ./user/themes /var/www/html/user/themes
COPY ./user/plugins /var/www/html/user/plugins

RUN chown -R www-data:www-data /var/www/html/

