FROM php:alpine
WORKDIR /
RUN wget  https://www.rainloop.net/repository/owncloud/rainloop.zip && \
    unzip rainloop.zip
WORKDIR /rainloop/app
EXPOSE 8080
CMD php -S 0.0.0.0:8080
