FROM alpine:3.14
RUN apt-get -y install sudo
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add openjdk11
RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli

CMD ["/bin/bash"]