FROM node:10.7-alpine

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY config.json /srv

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    su-exec \
    bash \
    && npm install --no-cache -g markdownlint \
    markdownlint-cli

VOLUME ["/srv/docs"]

#WORKDIR /build/docs

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
#ENTRYPOINT ["bash"]
