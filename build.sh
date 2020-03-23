#!/bin/bash
go get -u ./...
env GOOS=windows GOARCH=amd64 CGO_ENABLED=1 CC=x86_64-w64-mingw32-gcc go get -u ./...
env GOOS=windows GOARCH=amd64 CGO_ENABLED=1 CC=x86_64-w64-mingw32-gcc go build ./...
env GOOS=linux GOARCH=amd64 CGO_ENABLED=1 go build ./...