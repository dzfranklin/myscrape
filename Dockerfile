FROM golang as build_pup
RUN go install github.com/ericchiang/pup@latest && cp /go/bin/pup /pup

FROM ubuntu:20.04

RUN apt update && apt install -y curl

COPY --from=build_pup /pup /usr/bin/

RUN curl "https://dl.min.io/client/mc/release/linux-arm64/mc" -o /usr/bin/mc --fail && chmod +x /usr/bin/mc
