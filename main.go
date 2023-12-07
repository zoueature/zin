package main

import (
	"github.com/zoueature/app"
	"github.com/zoueature/zin/conf"
	"github.com/zoueature/zin/route"
)

func main() {
	app.RunApp(conf.GetConfig().Configuration, app.RouteRegister(route.RegisterRoute))
}
