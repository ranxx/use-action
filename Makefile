build:
	CGO_ENABLED=0 go build -o use-action main.go
linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o use-action main.go
docker-build:
	docker build . --file Dockerfile --tag use-action:$(shell date +%s)
docker:build
	docker build . --file Dockerfile --tag use-action:$(shell date +%s)