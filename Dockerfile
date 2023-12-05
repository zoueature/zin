FROM golang:1.21.4 as builder

WORKDIR /build

COPY . .

ENV GOPRIVATE="gitlab.jiebu.com"
ENV GOINSECURE="gitlab.jiebu.com"
ENV GOPROXY='https://goproxy.cn,direct'

ARG GIT_USER
ARG GIT_TOKEN

RUN git config --global url."http://$GIT_USER:$GIT_TOKEN@gitlab.jiebu.com".insteadOf "http://gitlab.jiebu.com"

RUN go mod tidy
RUN go build -o app-runner .


FROM alpine:3.18.5

WORKDIR /app

COPY --from=builder /build/app-runner ./app

CMD ['./app']