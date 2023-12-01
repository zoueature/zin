package main

import (
	"gitlab.jiebu.com/base/app"
	"gitlab.jiebu.com/base/jin/conf"
	"gitlab.jiebu.com/base/jin/route"
)

func main() {
	app.RunApp(conf.GetConfig().Configuration, route.RegisterRoute)
}
