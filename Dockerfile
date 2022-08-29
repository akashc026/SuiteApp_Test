FROM ubuntu:latest
RUN apt add --no-cache bash
RUN apt add --update npm
RUN apt add openjdk11
CMD ["/bin/bash"]