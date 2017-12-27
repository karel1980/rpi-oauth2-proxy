FROM golang:1.9.2-alpine3.7

MAINTAINER Karel Vervaeke "karel@vervaeke.info"

RUN apk update && apk add git
RUN git clone --branch v2.1 https://github.com/bitly/oauth2_proxy.git /go/src/app

RUN go get -d -v github.com/bitly/oauth2_proxy
RUN go install -v github.com/bitly/oauth2_proxy

VOLUME /conf

EXPOSE 4180

CMD ["oauth2_proxy", "-config", "/conf/oauth2_proxy.cfg"]
