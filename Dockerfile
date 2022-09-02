FROM alpine:latest
RUN apk --no-cache update \
    && apk --no-cache add sudo
copy run.sh /usr/local/
RUN addgroup -S cassandra && adduser -S cassandra -G cassandra
RUN chown -R cassandra:cassandra /home/cassandra/
RUN echo 'cassandra  ALL=(ALL) /bin/su' >>  /etc/sudoers
USER cassandra
ENTRYPOINT [ "sh","/usr/local/run.sh"]
RUN apk add --update npm
RUN apk add openjdk11
RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli



#FROM alpine:3.14
#RUN addgroup -S appgroup && adduser -S appuser -G appgroup
#USER appuser
#WORKDIR /home/sdf
#RUN apk add --no-cache bash
#RUN apk add --update npm
#RUN apk add openjdk11
#RUN npm install -g --acceptSuiteCloudSDKLicense @oracle/suitecloud-cli
#CMD ["/bin/bash"]


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
