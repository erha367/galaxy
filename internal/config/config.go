package config

import "github.com/zeromicro/go-zero/rest"

type Config struct {
	rest.RestConf
	Environment string `json:"Environment"`
	Mysql       struct {
		DataSource string
	}
}
