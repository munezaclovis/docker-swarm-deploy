FROM docker:27.3.1

LABEL "name"="SSH Docker Action"
LABEL "maintainer"="Clovis Muneza <mugaro234@gmail.com>"

LABEL "com.github.actions.name"="SSH Docker Action"
LABEL "com.github.actions.description"="Use Docker over SSH"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

RUN apk --no-cache add openssh-client

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
