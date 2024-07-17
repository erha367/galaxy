package svc

import (
	"galaxy/internal/config"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"gorm.io/gorm/schema"
	"log"
	"time"
)

type ServiceContext struct {
	Config config.Config
	DB     *gorm.DB
}

func NewServiceContext(c config.Config) *ServiceContext {
	return &ServiceContext{
		Config: c,
		DB:     InitDatabase(c),
	}
}

// InitDatabase 初始化数据库连接
func InitDatabase(c config.Config) *gorm.DB {
	dbConn, err := gorm.Open(mysql.Open(c.Mysql.DataSource), &gorm.Config{
		NamingStrategy: schema.NamingStrategy{SingularTable: true},
		// 默认输出到控制台
		//Logger: logger.Default.LogMode(logger.Info),
		Logger: NewSQLLog(),
	})
	if err != nil {
		panic("sql init error: " + err.Error())
	}
	sqlDB, err := dbConn.DB()
	if err != nil {
		panic("sql conn error: " + err.Error())
	}
	log.Println(`database connect success`, c.Mysql.DataSource)
	// SetMaxIdleCons 设置空闲连接池中连接的最大数量
	sqlDB.SetMaxIdleConns(30)
	// SetMaxOpenCons 设置打开数据库连接的最大数量。
	sqlDB.SetMaxOpenConns(50)
	// SetConnMaxLifetime 设置了连接可复用的最大时间。
	sqlDB.SetConnMaxLifetime(time.Hour)
	return dbConn
}
