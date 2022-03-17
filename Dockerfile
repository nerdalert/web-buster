FROM golang:1.15 as build

RUN apt-get update && apt-get install -y ca-certificates
RUN go get github.com/nerdalert/web-buster

# Buildiii
WORKDIR /go/src/github.com/nerdalert/web-buster
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o /go/bin/web-buster main.go

##########
# Deploy #
##########

FROM fedora
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

COPY --from=build /go/bin/${APPLICATION} /web-buster

RUN chmod +x /web-buster

ENTRYPOINT ["/web-buster/web-buster"]

