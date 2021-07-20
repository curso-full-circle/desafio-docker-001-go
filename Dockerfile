FROM golang:1.14.3-alpine AS build
WORKDIR /src
COPY hw.go .
RUN go build -o /out/hw .
CMD ["/out/hw"]
