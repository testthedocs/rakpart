FROM alpine:latest

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

ENV PIP_CACHE /root/.cache

RUN builddeps=' \
    build-base \
    musl-dev \
    python3-dev \
    git \
    openssl \
    ' \
    && adduser -s /bin/false -D textlintuser \
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
    && pip3 install --upgrade pip \
    && pip3 install --upgrade setuptools \
    && pip3 install docutils-ast-writer \
    && rm -rf $PIP_CACHE \
    && npm install  -g \
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
    && npm cache clear \
    && apk del --purge $builddeps


WORKDIR /srv
#COPY example example
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]
