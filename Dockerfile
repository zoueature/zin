FROM golang:1.21.4-alpine as builder

WORKDIR /build

COPY . .

RUN go mod tidy
RUN go build -o app-runner .


FROM alpine:3.18.5

WORKDIR /app

COPY --from=builder /tmp/app-runner ./app

CMD ['./app']

