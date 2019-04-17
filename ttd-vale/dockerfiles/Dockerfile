FROM golang:1.12-alpine3.9 as builder

LABEL maintainer "Sven <sven@testthedocs.org>" \
    org.label-schema.vendor = "TestTheDocs"

RUN apk --no-cache add \
    git \
    musl-dev \
    gcc \
    ca-certificates

WORKDIR /srv

RUN git clone https://github.com/testthedocs/vale-styles.git \
    && git clone https://github.com/errata-ai/vale \
    && go get github.com/urfave/cli \
    && go get github.com/errata-ai/vale

WORKDIR /srv/vale

RUN CGO_ENABLED=0 GOOS=linux go build ${LDFLAGS} -o bin/vale

FROM alpine:3.9

LABEL name="ttd-vale" \
    description="Spelling, grammar, style and readability linter" \
    maintainer="Sven <sven@testthedocs.org>" \
    org.label-schema.vendor="TestTheDocs"


COPY --from=builder /srv/vale-styles/ttd-light /srv/vale-styles/ttd-light
COPY --from=builder /srv/vale/bin/vale /usr/local/bin/vale
COPY dockerfiles/entrypoint.sh /usr/local/bin/entrypoint.sh
COPY .vale.ini /srv/.vale.ini


RUN adduser -s /bin/false -D -H ttd \
    && apk --no-cache add \
    tini \
    su-exec \
    bash


USER ttd
WORKDIR /srv
VOLUME /srv

ENTRYPOINT [ "bash" ]
#ENTRYPOINT [ "/sbin/tini", "--", "/usr/local/bin/entrypoint.sh" ]
