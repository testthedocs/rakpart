FROM alpine:latest
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    the_silver_searcher \
    su-exec \
    bash

VOLUME ["/build/docs"]

WORKDIR /build/docs

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY dockerfiles/check.sh /usr/local/bin/check.sh

#ENTRYPOINT ["bash"]
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
