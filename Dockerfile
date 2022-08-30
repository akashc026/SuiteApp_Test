FROM alpine:3.14
RUN apk --no-cache update && apk --no-cache add sudo
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add openjdk11
RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
RUN adduser -D $USER && mkdir -p /etc/sudoers.d && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER && chmod 0440 /etc/sudoers.d/$USER
USER $USER
WORKDIR $HOME
RUN whoami
RUN sudo whoami
CMD ["/bin/bash"]
