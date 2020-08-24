FROM golang:1.10-alpine3.8 AS multistage

RUN apk add --no-cache --update git
RUN go get golang.org/x/tools/cmd/cover

WORKDIR /src/soma
COPY . .

RUN go run src/soma/soma.go
#RUN cd src/soma && go test

#FROM scratch
#
#COPY --from=multistage /src/soma/soma /
#
#CMD ["/soma"]
