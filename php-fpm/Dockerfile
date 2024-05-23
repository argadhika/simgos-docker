
FROM php:7.4-fpm

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Install system dependencies and PHP extensions
RUN apt-get update && apt-get install -y \
    libbz2-dev \
    libcurl4-openssl-dev \
    libedit-dev \
    libfreetype6-dev \
    libicu-dev \
    libjpeg-dev \
    libmagickwand-dev \
    libonig-dev \
    libpng-dev \
    libsqlite3-dev \
    libssl-dev \
    libxml2-dev \
    libxpm-dev \
    libxslt1-dev \
    libzip-dev \
    libssh2-1-dev \
    zlib1g-dev \
    libgmp-dev \
    libgmpxx4ldbl \
    git \
    unzip \
    iputils-ping

# Install PHP extensions using install-php-extensions
RUN install-php-extensions bcmath
RUN install-php-extensions bz2
RUN install-php-extensions calendar
RUN install-php-extensions ctype
RUN install-php-extensions curl
RUN install-php-extensions dom
RUN install-php-extensions exif
RUN install-php-extensions fileinfo
RUN install-php-extensions filter
RUN install-php-extensions ftp
RUN install-php-extensions gd
RUN install-php-extensions gettext
RUN install-php-extensions hash
RUN install-php-extensions iconv
RUN install-php-extensions intl
RUN install-php-extensions json
RUN install-php-extensions mbstring
RUN install-php-extensions mysqli
RUN install-php-extensions mysqlnd
RUN install-php-extensions opcache
RUN install-php-extensions pdo
RUN install-php-extensions pdo_mysql
RUN install-php-extensions pdo_sqlite
RUN install-php-extensions phar
RUN install-php-extensions posix
RUN install-php-extensions shmop
RUN install-php-extensions simplexml
RUN install-php-extensions soap
RUN install-php-extensions sockets
RUN install-php-extensions sodium
RUN install-php-extensions sysvmsg
RUN install-php-extensions sysvsem
RUN install-php-extensions sysvshm
RUN install-php-extensions tokenizer
RUN install-php-extensions xml
RUN install-php-extensions xmlreader
RUN install-php-extensions xmlwriter
RUN install-php-extensions xsl
RUN install-php-extensions zip

RUN install-php-extensions grpc
RUN install-php-extensions protobuf
RUN install-php-extensions ssh2
RUN install-php-extensions mcrypt

RUN install-php-extensions xdebug

RUN apt-get update && apt-get install -y sudo

RUN echo "www-data ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN sed -i 's/listen = 9000//g' /usr/local/etc/php-fpm.d/zz-docker.conf

WORKDIR /var/www/html

CMD ["php-fpm", "-R"]