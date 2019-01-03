FROM node:10.7-alpine

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

RUN builddeps=' \
    build-base \
    musl-dev \
    python3-dev \
    git \
    openssl \
    ' \
    && adduser -s /bin/false -D ttd \
    && apk --no-cache add \
	$builddeps \
	musl \
	ca-certificates \
        bash \
        python3 \
        clang \
        clang-libs \
        indent \
        nodejs \
	tini \
	su-exec \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade --no-cache-dir pip \
    && pip3 install --upgrade --no-cache-dir setuptools \
    && pip3 install --no-cache-dir docutils-ast-writer \
    && npm install -g -no-cache \
        textlint \
        textlint-rule-alex \
        textlint-rule-no-dead-link \
        textlint-rule-unexpanded-acronym \
        textlint-rule-write-good \
        textlint-plugin-rst \
        textlint-plugin-html \
        textlint-rule-rousseau \
	textlint-rule-max-number-of-lines \
	textlint-rule-terminology \
        textlint-rule-en-capitalization \
        textlint-rule-common-misspellings \
    && apk del --purge $builddeps


WORKDIR /srv
#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
