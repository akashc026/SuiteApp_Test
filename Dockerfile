# FROM alpine:3.14
# RUN apk add --no-cache bash
# RUN apk add --update npm
# RUN apk add openjdk11
# RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
# RUN echo $(whoami)
# CMD ["/bin/bash"]


FROM node:latest
RUN apt-get update && apt-get install -y openjdk-11-jdk
RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
CMD ["/bin/bash"]