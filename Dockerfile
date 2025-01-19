FROM golang:1.23-alpine AS builder

WORKDIR /app
COPY go.mod go.sum ./
RUN apk add --update --no-cache git
RUN go mod download && go mod verify

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -o application ./cmd/app

FROM scratch
COPY --from=builder /app/application /app/application
COPY --from=builder /app/config.yml /app/config.yml

CMD ["/app/application"]
