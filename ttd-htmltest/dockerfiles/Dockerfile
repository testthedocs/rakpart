FROM golang:1.12-alpine AS builder

RUN apk add --no-cache ca-certificates git

RUN git clone https://github.com/wjdp/htmltest.git /src/htmltest

WORKDIR /src/htmltest
RUN go mod download

# Import the code from the context.

RUN CGO_ENABLED=0 go build -installsuffix 'static' -ldflags "-X main.date=`date -u +%Y-%m-%dT%H:%M:%SZ` -X main.version=`git describe --tags`" -o /app .

FROM alpine:3.9 AS final

WORKDIR /bin
COPY --from=builder /app ./htmltest
WORKDIR /test
CMD [ "htmltest", "./"]
