# DOCKER-VERSION 1.0.0
FROM datenbetrieb/debian:jessie
MAINTAINER Peter Niederlag "peter.niederlag@datenbetrieb.de"

# inject stuff into the container
COPY container-files /

ENV TYPO3_SRC_REPO http://git.typo3.org/Packages/TYPO3.CMS
ENV TYPO3_SRC_REF master
ENV TYPO3_SRC_DIR /opt/typo3_src

RUN mkdir -p $TYPO3_SRC_DIR && \
    echo "here goes the source" > $TYPO3_SRC_DIR/.dummy && \
    echo "<php \r phpinfo();" > $TYPO3_SRC_DIR/info.php

VOLUME $TYPO3_SRC_DIR

# entrypoint MUST be set as JSON if you want exec "$@" support
ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
