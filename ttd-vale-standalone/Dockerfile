FROM debian:latest
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs" \
    vale_version=$VALE_VERSION

ENV VALE_VERSION 0.11.0

RUN builddeps=' \
    curl \
    tar \
    ca-certificates \
    ' \
    && useradd --system -s /bin/false ttd \
    && apt update && apt install -y --no-install-recommends \
    $builddeps \
    python-docutils \
    gosu \
    && curl --silent --show-error --fail --location \
    --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
    "https://github.com/ValeLint/vale/releases/download/v${VALE_VERSION}/vale_${VALE_VERSION}_Linux_64-bit.tar.gz" \
    | tar --no-same-owner -C /usr/local/bin -xz vale \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/build/"]

WORKDIR /build/docs

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

#https://github.com/ValeLint/vale/releases/download/v0.11.0/vale_0.11.0_Linux_64-bit.tar.gz
