FROM debian:latest
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs" \
    vale_version=$VALE_VERSION

ENV HTMLTEST_VERSION 0.6.0

RUN builddeps=' \
    curl \
    ca-certificates \
    ' \
    && useradd --system -s /bin/false ttduser \
    && apt update && apt install -y --no-install-recommends \
    $builddeps \
    python-docutils \
    gosu \
    && curl -kLo /usr/local/bin/htmltest https://github.com/wjdp/htmltest/releases/download/v${HTMLTEST_VERSION}/htmltest-linux \
    && chmod +x /usr/local/bin/htmltest \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/build/"]

WORKDIR /build/docs

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY htmltest.yml /build/.htmltest.yml

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
