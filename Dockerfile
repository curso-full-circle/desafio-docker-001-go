FROM golang:1.14.3-alpine AS build
WORKDIR /src
COPY hw.go .
RUN go build -ldflags "-w" -o /out/hw .

FROM scratch AS bin-unix
COPY --from=build /out/hw /
CMD ["/hw"]
