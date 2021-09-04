FROM tilt.dev/nodejs-express-base as base

FROM node:16-bullseye as n

WORKDIR /app

COPY --from=base /app/package.json ./package.json

ADD . .

FROM caddy:2

WORKDIR /var/www/html
COPY --from=n /app/package.json .

ENTRYPOINT [ "caddy", "run" ]
