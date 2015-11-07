# DOCKER-VERSION 1.0.0
FROM datenbetrieb/nginx:jessie
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

ADD ./typo3cms.conf /etc/nginx/sites-available

RUN ln -s /etc/nginx/sites-available/typo3cms.conf /etc/nginx/sites-enabled/typo3cms
RUN rm /etc/nginx/sites-enabled/default

#RUN echo "upstream php-upstream { server fpm:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN usermod -u 1000 www-data
