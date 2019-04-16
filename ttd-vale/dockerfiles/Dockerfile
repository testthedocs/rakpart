FROM alpine:3.9 as fetcher

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

WORKDIR /srv

RUN apk --no-cache add \
    git \
    ca-certificates \
    bash \
    && git clone https://github.com/testthedocs/vale-styles.git

FROM alpine:3.9

LABEL name="ttd-vale" \
    description="Spelling, grammar, style and readability linter" \
    maintainer="Sven <sven@testthedocs.org>" \
    org.label-schema.vendor ="TestTheDocs"

ENV VALE_VERSION 1.4.0

COPY --from=fetcher /srv/vale-styles/ttd-light /srv/vale-styles/ttd-light
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY .vale.ini /srv/.vale.ini

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    bash \
    && wget -O vale.tgz https://github.com/errata-ai/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz \
    && tar zxvf vale.tgz \
    # DO ABOVE IN ONE COMMAND
    && mv vale /usr/local/bin/vale \
    && rm LICENSE \
    && rm README.md

USER ttd
WORKDIR /srv
VOLUME /srv

#ENTRYPOINT [ "bash" ]
ENTRYPOINT [ "/sbin/tini", "--", "/usr/local/bin/entrypoint.sh" ]
