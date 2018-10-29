FROM python:3-alpine
LABEL maintainer "TestTheDocs <info@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

# If we need ENVs set them here

# If possible first 'copy' for better cache and speed
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh

# Second add 'run' commands

RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    su-exec \
    tini \
    bash \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir --upgrade setuptools \
    && pip3 install --no-cache-dir doc8 pygments

WORKDIR /srv
ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]

