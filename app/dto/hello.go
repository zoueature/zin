package dto

type HelloReq struct {
	Name string `json:"name" form:"name" query:"name"`
}
