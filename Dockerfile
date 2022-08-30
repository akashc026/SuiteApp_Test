FROM alpine:3.14
RUN apk add --no-cache bash
RUN apk add --update npm
RUN apk add openjdk11
RUN echo $(whoami)
CMD ["/bin/bash"]