FROM alpine:3.8

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY linkcheck /usr/local/bin/linkcheck

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    su-exec \
    bash \
    curl


VOLUME ["/srv/test"]

#WORKDIR /build/docs

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
#ENTRYPOINT ["bash"]
