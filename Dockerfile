FROM alpine:3.14
USER root
RUN apk add sudo
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add openjdk11
RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
RUN chown -R $(whoami) /usr/local/lib/node_modules/
CMD ["/bin/bash"]