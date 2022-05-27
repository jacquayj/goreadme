# File generated by github.com/posener/goaction. DO NOT EDIT.


FROM golang:1.16.3-alpine3.13
RUN apk add git 

COPY . /home/src
WORKDIR /home/src
RUN go build -o /bin/action ./cmd/goreadme

RUN git config --global --add safe.directory /github/workspace

ENTRYPOINT [ "/bin/action" ]
