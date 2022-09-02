FROM openjdk:11

RUN apt-get install -y curl \
  && curl -sL https://deb.nodesource.com/setup_9.x | bash - \
  && apt-get install -y nodejs \
  && curl -L https://www.npmjs.com/install.sh | sh
  RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
  CMD ["/bin/bash"]
# RUN npm install -g grunt grunt-cli

# FROM alpine:3.14
# RUN apk add --no-cache bash
# RUN apk add --update npm
# RUN apk add openjdk11
# RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
# CMD ["/bin/bash"]


# FROM alpine:3.14
# RUN adduser -D $USER && mkdir -p /etc/sudoers.d \
#         && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
#         && chmod 0440 /etc/sudoers.d/$USER
# USER $USER
# WORKDIR $HOME
# RUN whoami
# RUN sudo whoami
# RUN apk add --no-cache bash
# RUN apk add --update npm
# RUN apk add openjdk11
# RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
# CMD ["/bin/bash"]


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
