FROM golang:alpine AS builder
RUN addgroup -g 1001 mocklet
RUN adduser mocklet -u 1001 -D -G mocklet /home/mocklet
RUN apk update && apk add --no-cache git
WORKDIR $GOPATH/src/mocklet/mocklet/
COPY . .
RUN go get -d -v
RUN CGO_ENABLED=0 GOOS=linux go build -o /mocklet

FROM scratch
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group
COPY --from=builder /mocklet /home/mocklet/mocklet
USER mocklet
WORKDIR /home/mocklet
ENTRYPOINT ["./mocklet"]
