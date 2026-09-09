default: build

build:
    go build -o wgt ./cmd/wgt

build-static:
    CGO_ENABLED=0 go build -trimpath -o wgt-static ./cmd/wgt

test:
    go test ./...

run *args:
    go run ./cmd/wgt {{args}}
