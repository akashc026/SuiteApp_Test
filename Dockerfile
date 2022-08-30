# FROM alpine:3.14
# RUN apk add --no-cache bash
# RUN apk add --update npm
# RUN apk add openjdk11
# CMD ["/bin/bash"]

FROM ubuntu:latest
RUN apt install nodejs npm
RUN apt install openjdk-11-jdk
CMD ["/bin/bash"]