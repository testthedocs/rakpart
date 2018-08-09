FROM alpine:3.8

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

ENV VALE_VERSION 0.11.2

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY vale-styles /src/vale-styles
COPY .vale.ini /src/.vale.ini

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    su-exec \
    && wget -O vale.tgz https://github.com/errata-ai/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz \
    && tar zxvf vale.tgz \
    && mv vale /usr/local/bin/vale \
    && rm LICENSE \
    && rm README.md

VOLUME /src
WORKDIR /src

ENTRYPOINT [ "/sbin/tini", "--", "/usr/local/bin/entrypoint.sh" ]
