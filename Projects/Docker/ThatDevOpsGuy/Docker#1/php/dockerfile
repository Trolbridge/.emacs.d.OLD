FROM php:fpm-alpine3.15
RUN apk update && apk add tzdata
ENV TZ=America/Detroit

# the pdo_mysql extension for PHP:
RUN docker-php-ext-install pdo pdo_mysql 

# the xdebug extension for nicer error messages on our development server:
RUN apk --no-cache add pcre-dev ${PHPIZE_DEPS} \ 
  && pecl install xdebug \
  && docker-php-ext-enable xdebug \
  && apk del pcre-dev ${PHPIZE_DEPS}