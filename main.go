package main

import (
	"github.com/gin-gonic/gin"
	"gitlab.jiebu.com/base/app"
	"gitlab.jiebu.com/base/jin/conf"
)

func main() {
	app.RunApp(conf.GetConfig().Configuration, app.RouteRegister(func(c *gin.Engine) {

	}))
}
