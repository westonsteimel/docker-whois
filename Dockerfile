FROM alpine:edge

RUN apk update && apk add --no-cache \
    whois \
    && addgroup whois \
    && adduser -G whois -s /bin/sh -D whois

USER whois

ENTRYPOINT ["whois"]

LABEL org.opencontainers.image.title="whois" \
    org.opencontainers.image.description="whois in Docker" \ 
    org.opencontainers.image.url="https://github.com/westonsteimel/docker-whois" \ 
    org.opencontainers.image.source="https://github.com/westonsteimel/docker-whois"
