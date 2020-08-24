FROM golang:1.10-alpine3.8 AS multistage

RUN apk add --no-cache --update git

WORKDIR /src/main
COPY . .

RUN go build  src/main/hello.go

FROM scratch

COPY --from=multistage /src/hello/hello /

CMD ["/hello"]
