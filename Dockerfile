FROM alpine:3.14
RUN apk add sudo
RUN apk add --no-cache su-exec
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add openjdk11

CMD ["/bin/bash"]