FROM debian:9-slim
LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY htmltest.yml /srv/.htmltest.yml

RUN builddeps=' \
    curl \
    ca-certificates \
    ' \
    && useradd --system -s /bin/false ttd \
    && apt update && apt install -y --no-install-recommends \
    $builddeps \
    python-docutils \
    gosu \
    && curl https://htmltest.wjdp.uk | sudo bash -s -- -b /usr/local/bin \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

VOLUME ["/srv/"]

WORKDIR /srv

#ENTRYPOINT ["/bin/bash"]
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
