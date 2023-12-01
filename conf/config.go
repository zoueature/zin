package conf

import (
	"gitlab.jiebu.com/base/config"
)

type AppConf struct {
	*config.Configuration `yaml:",inline"`
}

var cfg *AppConf

func init() {
	c := new(AppConf)
	err := config.Init(c)
	if err != nil {
		panic(err)
	}
	cfg = c
}
func GetConfig() *AppConf {
	return cfg
}
