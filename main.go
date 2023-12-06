package main

import (
	"gitlab.jiebu.com/base/app"
	"gitlab.jiebu.com/base/zin/conf"
	"gitlab.jiebu.com/base/zin/route"
)

func main() {
	app.RunApp(conf.GetConfig().Configuration, app.RouteRegister(route.RegisterRoute))
}
