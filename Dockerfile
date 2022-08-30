# FROM alpine:3.14
# USER 0
# RUN apk --no-cache update && apk --no-cache add sudo
# RUN apk add --no-cache bash
# RUN apk add --update npm
# RUN apk add openjdk11
# RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
# RUN whoami
# RUN sudo whoami
# CMD ["/bin/bash"]


FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install nodejs -y
RUN apt-get install nodejs-legacy -y
RUN apt-get install npm -y
RUN apt install openjdk-11-jre-headless
RUN npm install
RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
CMD ["npm"]
