FROM node:22 AS deps

COPY package.json /srv/
COPY package-lock.json /srv/

RUN npm install --prefix /srv

FROM node:22 AS builder

COPY . /srv
COPY --from=deps /srv/node_modules /srv/node_modules

RUN npm run --prefix /srv build

FROM debian:bookworm-slim

RUN apt-get update && \
	apt-get dist-upgrade -y && \
	apt-get install -y ca-certificates tini && \
	apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
	rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*

COPY --from=caddy:2 /usr/bin/caddy /usr/bin/caddy
COPY .docker/Caddyfile /etc/Caddyfile
COPY .docker/entrypoint.sh /entrypoint.sh
COPY --from=builder /srv/dist /srv

WORKDIR /srv

ENTRYPOINT ["/usr/bin/tini", "--", "/entrypoint.sh"]