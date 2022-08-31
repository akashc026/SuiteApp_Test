FROM alpine:3.14
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add git
RUN apk add openjdk11
RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
CMD ["/bin/sh"]




# FROM alpine:3.14
# RUN apk --no-cache update && apk --no-cache add sudo
# USER root
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
