FROM docker:20.10.8-dind-alpine3.14

RUN apk update && apk add curl git

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.20.1/bin/linux/amd64/kubectl
RUN chmod u+x kubectl && mv kubectl /bin/kubectl
