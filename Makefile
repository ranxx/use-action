build:
	CGO_ENABLED=0 go build -o use-action main.go
linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o use-action main.go
docker-build:
	docker build -t use-action .
docker:linux
	docker build -t use-action .