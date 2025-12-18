FROM docker:29.1.3-dind

RUN apk update && apk add curl git

RUN curl -LO https://storage.googleapis.com/kubernetes-letrelease/release/v1.35.0/bin/linux/amd64/kubectl
RUN chmod u+x kubectl && mv kubectl /bin/kubectl
