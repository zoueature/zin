FROM golang:1.21.4-alpine as builder

WORKDIR /build

COPY . .
ENV GOPRIVATE="gitlab.jiebu.com"
ENV GOINSECURE="gitlab.jiebu.com"
RUN git config --global url."git@gitlab.jiebu.com:".insteadOf http://gitlab.jiebu.com/

RUN go mod tidy
RUN go build -o app-runner .


FROM alpine:3.18.5

WORKDIR /app

COPY --from=builder /tmp/app-runner ./app

CMD ['./app']

