FROM alpine:3.8
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY dockerfiles/testts.sh /usr/local/bin/testts.sh

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    the_silver_searcher \
    su-exec \
    bash

VOLUME ["/build/docs"]

WORKDIR /build/docs

#ENTRYPOINT ["bash"]
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
