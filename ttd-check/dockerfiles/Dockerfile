FROM alpine:latest
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"


RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    bash \
    ca-certificates \
    git \
    tini \
    su-exec

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY dockerfiles/ttdtest.sh /usr/local/bin/ttdtest.sh

#ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]

