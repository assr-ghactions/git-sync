FROM alpine

LABEL "repository"="http://github.com/assr-ghactions/git-sync"
LABEL "homepage"="http://github.com/assr-ghactions/git-sync"
LABEL "maintainer"="Ajay Chinthapalli <chinthapalli.ajay@gmail.com>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
