build:
	go build -o use-action main.go
linux:
	GOOS=linux GOARCH=amd64 go build -gcflags "-N -l" -o use-action main.go
docker-build:
	docker build -t use-action .
docker:linux
	docker build -t use-action .