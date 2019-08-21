FROM php:7.2-fpm-stretch

# Install the php-fpm package + git, graphicsmagick, openssh-client
RUN apt-get update && apt-get install -y \
        git \
        graphicsmagick \
        openssh-client \
        libxml2-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) iconv \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && apt-get clean

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \

# Install php extensions
RUN docker-php-ext-install gd mysqli xml soap zip intl \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd

# Get cUID of www-data
ARG cUID
RUN usermod --non-unique --uid $cUID www-data