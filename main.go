package main

import (
	"net/http"

	"github.com/ranxx/cuten"
)

func main() {
	engine := cuten.New()
	engine.GET("/", func(ctx *cuten.Context) {
		ctx.String(http.StatusOK, "Welcome use github action\n")
	})
	engine.Run(":12350")
}
