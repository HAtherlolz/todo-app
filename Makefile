.PHONY:
.SILENT:

build:
	go build -o ./.bin/main cmd/main.go

run: build
	./.bin/main

image-build:
	docker-compose build todo-app

container-run:
	docker-compose up todo-app

migrate:
	migrate -path ./schema -database 'postgres://postgres:qwerty@0.0.0.0:5436/postgres?sslmode=disable' up

swag:
	swag init -g cmd/main.go