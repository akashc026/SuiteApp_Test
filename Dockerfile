FROM alpine:3.14
USER root
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add openjdk11
RUN chown -R $(whoami) /usr/local/bin/
CMD ["/bin/bash"]