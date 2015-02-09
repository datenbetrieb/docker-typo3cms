# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:latest
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

# inject stuff into the container
#COPY container-files /

RUN mkdir -p "/data/www" && \
    mkdir -p "/etc/nginx/sites-enabled"

VOLUME ["/data/www"]
VOLUME ["/var/lib/mysql"]
VOLUME ["/etc/nginx/sites-enabled"]
#ENV TYPO3CMS_REPO_URL http://git.typo3.org/Packages/TYPO3.CMS
#ENV TYPO3CMS_REPO_DIR /opt/typo3_src
#ENV TYPO3CMS_REFERENCE master

#RUN mkdir -p $TYPO3CMS_REPO_DIR && \
#    echo "@todo Dockerfile/entrypoint, here goes the source" > $TYPO3CMS_REPO_DIR/.dummy && \
#    echo "<php \r phpinfo();" > $TYPO3CMS_REPO_DIR/info.php

#VOLUME $TYPO3CMS_REPO_DIR

# entrypoint MUST be set as JSON if you want exec "$@" support
#ONBUILD RUN /opt/typo3cms-builder/prepare-typo3cms-instance.sh
#ONBUILD ENTRYPOINT ["/entrypoint.sh"]
#CMD [""]
