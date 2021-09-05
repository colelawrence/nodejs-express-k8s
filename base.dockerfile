FROM alpine:3.14.2

WORKDIR '/app'
ADD message.txt message.txt

ENTRYPOINT cat message.txt
