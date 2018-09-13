FROM golang

WORKDIR /go/src/oauth2_proxy
COPY . .
RUN go get -d -v /go/src/oauth2_proxy
RUN go install -v /go/src/oauth2_proxy

# WORKDIR /conf
# COPY config/oauth2_proxy.cfg .

EXPOSE 4180

CMD ["oauth2_proxy", "-config", "/conf/oauth2_proxy.cfg"]
