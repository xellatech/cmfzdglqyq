FROM bogdanas/symfony-php:7.4

RUN apt-get update && apt-get install -y libpng-dev default-mysql-client

RUN apt-get install -y \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libpng-dev libxpm-dev \
    libfreetype6-dev

RUN docker-php-ext-configure gd \
    --with-webp \
    --with-jpeg \
    --with-xpm \
    --with-freetype

RUN docker-php-ext-install gd
RUN docker-php-ext-install soap
