FROM zemanlx/remark-lint
LABEL maintainer "TestTheDocs <info@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini

USER ttd
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/remark"]
