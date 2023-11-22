package main

import (
	"github.com/jiebutech/app"
	"github.com/jiebutech/jin/conf"
	"github.com/jiebutech/jin/route"
)

func main() {
	app.RunApp(conf.GetConfig().Configuration, route.RegisterRoute)
}
