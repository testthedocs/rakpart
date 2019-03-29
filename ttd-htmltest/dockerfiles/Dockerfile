# Move to mutilstage build
# because there is no standard libc in alpine
# https://github.com/wjdp/htmltest/blob/master/Dockerfile

ARG GO_VERSION=1.11
ARG TARGET=alpine:3.9

FROM golang:${GO_VERSION}-alpine AS builder

RUN apk add --no-cache ca-certificates git
RUN git clone https://github.com/wjdp/htmltest.git
RUN cd htmltest \
    && go mod download \
    && CGO_ENABLED=0 go build -installsuffix 'static' -ldflags "-X main.date=`date -u +%Y-%m-%dT%H:%M:%SZ` -X main.version=`git describe --tags`" -o /app .
