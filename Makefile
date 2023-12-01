build:
	go build -o ./build/ .
test:
	go test ./...
run:
	go run main.go
config:
	cp ./conf/application.yaml .
wire:
	cd wire && wire gen