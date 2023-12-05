FROM 192.168.1.202:5000/golang:builder-1.0 as builder

WORKDIR /build

COPY . .

RUN yq -i '.app.listen = ":80"' ./conf/application.yaml

RUN go mod tidy
RUN go build -o app-runner .


FROM alpine:3.18.5

WORKDIR /app

COPY --from=builder /build/app-runner ./app
COPY --from=builder /build/application.yaml .

CMD ['./app']