FROM alpine:3.7
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

ENV PIP_CACHE /root/.cache

RUN adduser -s /bin/false -D -H ttduser \
    && apk --no-cache add \
    python \
    enchant \
    aspell-en \
    tini \
    su-exec \
    && python -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip install --upgrade pip \
    && pip install --upgrade setuptools \
    && pip install pyenchant \
    && rm -rf $PIP_CACHE

VOLUME ["/build/docs"]

COPY dockerfiles/spellcheck.py /usr/local/bin/spellcheck.py
COPY dockerfiles/spelling.dict /build/spelling.dict

WORKDIR /build

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
