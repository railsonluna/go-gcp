FROM golang:1.10-alpine3.8 AS multistage

RUN apk add --no-cache --update git
RUN go get golang.org/x/tools/cmd/cover

WORKDIR /src/main
COPY . .

#RUN go run src/main/main.go
#RUN cd src/main && go test

#FROM scratch
#
#COPY --from=multistage /src/main/main /
#
#CMD ["/main"]
