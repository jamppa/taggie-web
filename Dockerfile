FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y apt-transport-https curl git
RUN sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
RUN sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
RUN apt-get update
RUN apt-get install dart/stable

ENV PATH $PATH:/usr/lib/dart/bin

EXPOSE 8080

# Add developer user
RUN adduser taggie --home /home/taggie --gecos "" --disabled-password
USER taggie
WORKDIR /home/taggie

ENV PATH $PATH:/home/taggie/.pub-cache/bin
RUN pub global activate stagehand

RUN mkdir -p code
WORKDIR /home/taggie/code
CMD ["bash"]