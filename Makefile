$(shell /bin/bash ./makefile.env.sh)
tag=$(shell date +%s)

build:
	CGO_ENABLED=0 go build -o use-action main.go
linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o use-action main.go
docker-build:
	docker build . --file Dockerfile --tag use-action:$(tag)
docker:build
	docker build . --file Dockerfile --tag use-action:$(tag)
	rm use-action
run-docker:
	docker rm -f use-action
	docker run -it -d -p 12350:12350 --name=use-action use-action:$(tag)