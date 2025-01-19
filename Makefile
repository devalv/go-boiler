setup:
	go install golang.org/x/tools/gopls@latest
	go install golang.org/x/tools/cmd/goimports@latest
	go install github.com/securego/gosec/v2/cmd/gosec@latest
	go install mvdan.cc/gofumpt@latest
	go install github.com/sqs/goreturns@latest
	go install -v github.com/go-critic/go-critic/cmd/gocritic@latest
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.63.4
	pip install pre-commit
	pre-commit install

fmt:
	gofmt -w -s ./internal
	goimports -w ./internal
	gofumpt -w ./internal
	go mod tidy

test:
	go test ./... -race

cover:
	go test ./... -race -cover

build:
	$(MAKE) fmt
	go build -o application ./cmd/app

run:
	go run ./cmd/app
