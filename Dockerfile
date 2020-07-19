FROM ubuntu

RUN apt-get update \
  && apt-get install -y git openssh-client \
  && echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]