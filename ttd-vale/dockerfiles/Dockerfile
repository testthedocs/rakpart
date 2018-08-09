FROM alpine:3.8 as builder

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

WORKDIR /srv

RUN apk --no-cache add \
    git \
    ca-certificates \
    bash \
    && git clone https://github.com/errata-ai/vale.git

FROM alpine:3.8

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

ENV VALE_VERSION 0.11.2

COPY --from=builder /srv/vale/styles/MailChimp /srv/vale-styles/MailChimp
COPY --from=builder /srv/vale/rule/vale /srv/vale-styles/vale
COPY --from=builder /srv/vale/rule/write-good /srv/vale-styles/write-good
COPY --from=builder /srv/vale/rule/proselint /srv/vale-styles/proselint
COPY --from=builder /srv/vale/styles/18F /srv/vale-styles/18F
COPY --from=builder /srv/vale/styles/OpenStack /srv/vale-styles/OpenStack
COPY --from=builder /srv/vale/styles/Pedantic /srv/vale-styles/Pedantic
COPY --from=builder /srv/vale/styles/PlainLanguage /srv/vale-styles/PlainLanguage
COPY --from=builder /srv/vale/styles/demo /srv/vale-styles/demo
COPY vale-styles/ttd /srv/vale-styles/ttd
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
#COPY vale-styles /src/vale-styles
COPY .vale.ini /srv/.vale.ini

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    su-exec \
    bash \
    && wget -O vale.tgz https://github.com/errata-ai/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz \
    && tar zxvf vale.tgz \
    && mv vale /usr/local/bin/vale \
    && rm LICENSE \
    && rm README.md

VOLUME /srv

ENTRYPOINT [ "bash" ]
#ENTRYPOINT [ "/sbin/tini", "--", "/usr/local/bin/entrypoint.sh" ]
