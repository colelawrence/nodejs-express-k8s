FROM node:14-alpine

WORKDIR '/var/www/app'
ADD package.json package.json
RUN npm install
ENTRYPOINT node server.js
