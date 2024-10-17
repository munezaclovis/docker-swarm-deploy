FROM docker:27.3.1

LABEL "name"="Docker Swarm Deploy Action"
LABEL "maintainer"="Clovis muneza <mugaro234@gmail.com>"

LABEL "com.github.actions.name"="Docker Swarm Deploy"
LABEL "com.github.actions.description"="Deploy a stack to a remote Docker swarm."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

RUN apk --no-cache add openssh-client

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
