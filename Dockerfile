FROM ubuntu:16.04

RUN sudo pt-get update \
  && sudo apt-get install -y git openssh-client \
  && echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]