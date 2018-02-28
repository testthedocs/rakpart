FROM alpine:latest
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

RUN adduser -s /bin/bash -D -H testuser \
    && apk --no-cache add \
    the_silver_searcher \
    bash \
    tini \
    su-exec

VOLUME ["/build/docs"]

WORKDIR /build/docs

COPY testtoctree.sh /usr/local/bin/testtoctree.sh
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
