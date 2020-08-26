FROM golang:1.10-alpine3.8 AS multistage

RUN apk add --no-cache --update git
RUN go get golang.org/x/tools/cmd/cover

WORKDIR /src/helloworld
COPY . .

RUN go run src/helloworld/main.go
#RUN cd src/helloworld && go test

#FROM scratch
#
#COPY --from=multistage /src/helloworld/helloworld.go /
#
#CMD ["/helloworld"]
