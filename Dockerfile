FROM alpine:3.10

RUN apk add --update-cache --no-cache \
                   openssl \
                   ca-certificates \
                   openssh-client \
                   openssl-dev \
                   sshpass \
                   rsync \
                   jq \
                   sudo \
                   unzip \
                   ansible \
                   tar && \
apk update --no-cache && \                   
apk upgrade --no-cache && \
rm -rf /tmp/* && \
rm -rf /var/cache/apk/*

# default command: display Ansible version
CMD [ "ansible-playbook", "--version" ]
WORKDIR /mnt/
