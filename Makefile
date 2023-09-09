setup:
	echo "Install all the build and lint dependencies"
	pip3 install pre-commit
	pre-commit install

pcr:
	pre-commit run --all-files

lint:
	golangci-lint run -c .golangci.yml

fmt:
	gofmt -w -s ./internal
	goimports -w ./internal

test:
	go test ./... -race

cover:
	go test ./... -race -cover

build:
	$(MAKE) fmt
	$(MAKE) lint
	go build -o application ./cmd

run:
	go run ./cmd
