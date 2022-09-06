FROM node:16.15.1-alpine3.16

RUN apk --no-cache update && apk --no-cache add sudo

RUN apk add --no-cache bash

RUN apk add --no-cache openjdk11-jdk

USER root

RUN npm install -g --acceptsuitecloudsdklicense @oracle/suitecloud-cli@

ENTRYPOINT ["suitecloud"]

CMD ["-h"]