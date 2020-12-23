FROM caddy:2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare


FROM caddy:2
LABEL org.opencontainers.image.source https://github.com/selim13/docker-caddy-cloudflare

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
