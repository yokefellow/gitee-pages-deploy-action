FROM ubuntu

RUN apt-get update \
  && apt-get install -y git openssh-client \
  && echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/entrypoint.sh"]