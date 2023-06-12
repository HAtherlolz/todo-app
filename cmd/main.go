package main

import (
	"log"

	"github.com/HAtherlolz/todo-app"
	"github.com/HAtherlolz/todo-app/pkg/handler"
)

func main() {
	handlers := new(handler.Handler)

	server := new(todo.Server)
	if err := server.Run("8000", handlers.InitRoutes()); err != nil {
		log.Fatal("error occured while running http server: %s", err.Error())
	}
}
