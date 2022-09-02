FROM node:16.15.1-alpine3.16

RUN apk --no-cache update && apk --no-cache add sudo

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH=$PATH:/home/node/.npm-global/bin

# RUN apk add --no-cache bash

RUN apk add --no-cache openjdk11-jdk

USER root

RUN npm install -g --acceptsuitecloudsdklicense @oracle/suitecloud-cli@1.1.2

WORKDIR /app

ENTRYPOINT ["suitecloud"]

CMD ["-h"]


# FROM alpine:3.14
# RUN apk --no-cache update && apk --no-cache add sudo
# USER root
# RUN sudo visudo
# RUN echo "root ALL=(ALL:ALL) NOPASSWD:ALL"
# RUN apk add --no-cache bash
# RUN apk add --update npm
# RUN apk add openjdk11
# WORKDIR /usr/local/lib/node_modules/@oracle/suitecloud-cli
# RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
# RUN sudo whoami
# CMD ["/bin/bash"]


# FROM ubuntu:latest
# RUN apt-get update -y
# RUN apt-get install nodejs -y
# # RUN apt-get install npm -y
# RUN apt-get install -y openjdk-8-jdk
# RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
# CMD ["/bin/bash"]
