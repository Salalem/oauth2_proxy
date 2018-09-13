FROM golang

WORKDIR /go/src/oauth2_proxy
COPY . .
RUN go get -d -v /go/src/oauth2_proxy
RUN go install -v /go/src/oauth2_proxy

EXPOSE 4180

CMD ["oauth2_proxy", "-config", "/go/src/oauth2_proxy/conf/oauth2_proxy.cfg"]
