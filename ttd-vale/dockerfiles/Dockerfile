#FROM alpine:3.8
FROM python:3-alpine

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

ENV VALE_VERSION 1.2.6

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    su-exec \
    bash \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir docutils \
    && wget -O vale.tgz https://github.com/errata-ai/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz \
    && tar zxvf vale.tgz \
    && mv vale /usr/local/bin/vale \
    && rm LICENSE \
    && rm README.md

WORKDIR /srv
VOLUME /srv

#ENTRYPOINT [ "bash" ]
ENTRYPOINT [ "/sbin/tini", "--", "/usr/local/bin/entrypoint.sh" ]
