FROM php:alpine
WORKDIR /
RUN wget https://www.rainloop.net/repository/webmail/rainloop-community-latest.zip && \
    unzip rainloop-community-latest.zip
WORKDIR /rainloop/v/1.12.1
EXPOSE 8080
CMD php -S 0.0.0.0:8080
