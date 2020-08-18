# Container image that runs your code
FROM ubuntu

RUN apt-get update \
  && apt-get install -y git openssh-client \
  && echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY *.sh /
RUN chmod +x /*.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
