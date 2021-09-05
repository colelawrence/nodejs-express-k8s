FROM debian:bullseye-slim

WORKDIR '/app'
ADD message.txt message.txt

ENTRYPOINT cat message.txt
