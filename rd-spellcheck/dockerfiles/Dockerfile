FROM alpine:latest
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

RUN builddeps=' \
    git \
    ' \
    && adduser -s /bin/false -D -H sphinx \
    && apk --no-cache add \
    $builddeps \
    python3 \
    make \
    aspell-en \
    enchant \
    tini \
    su-exec \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip \
    && pip3 install -r https://raw.githubusercontent.com/testthedocs/sphinx-spellcheck/master/requirements.txt --no-cache-dir \
    && apk del --purge $builddeps

VOLUME ["/build/docs"]

COPY dockerfiles/_config /build/_config
COPY dockerfiles/Makefile /build/Makefile
#COPY dockerfiles/_theme /build/_theme
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /build

#COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
