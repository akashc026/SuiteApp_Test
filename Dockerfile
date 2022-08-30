FROM alpine:3.14
RUN apk --no-cache update && apk --no-cache add sudo
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add openjdk11
RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
USER root
RUN whoami
RUN sudo whoami
CMD ["/bin/bash"]
