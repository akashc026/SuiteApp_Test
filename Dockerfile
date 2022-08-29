FROM ubuntu:latest
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add openjdk11
CMD ["/bin/bash"]