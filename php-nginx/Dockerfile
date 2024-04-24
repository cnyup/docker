FROM php:8.2-fpm

LABEL phpVersion="8.2" nginxVersion="1.22.1"

COPY --chmod=0777 run.sh  /


RUN  sed -i "s/deb.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list.d/* && \
     apt update && apt install  nginx=1.22.1-9 -y && \
     docker-php-ext-install   opcache  && \
     yes '' | pecl install mongodb redis  && \
     docker-php-ext-enable redis mongodb

COPY nginx.conf  /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 9000

ENTRYPOINT ["/run.sh"]