# # 23 days ago, does work
# FROM node:14.17.5-alpine3.13 as n

# FROM caddy:2
FROM node:16-bullseye
# FROM node:lts

# # 8 days ago, doesn't work
# FROM node:14.17.5-alpine3.14
# # 4 days ago, doesn't work
# FROM node:14.17.6-alpine3.14

WORKDIR /app
ADD package.json package.json
RUN npm install
# ENTRYPOINT node server.js
