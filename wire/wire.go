//go:build wireinject

package wire

import (
	"github.com/google/wire"
)

func NewApiController() *api.ApiCtrl {
	panic(wire.Build(ctrl.NewController))
}
