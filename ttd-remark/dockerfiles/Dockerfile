FROM zemanlx/remark-lint

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    #su-exec \
    tini

USER ttd
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/remark"]
