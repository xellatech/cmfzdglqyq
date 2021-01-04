FROM bogdanas/symfony-php:7.4

RUN apt-get update
RUN apt-get install -y default-mysql-client
