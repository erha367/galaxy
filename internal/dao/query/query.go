package query

import (
	"context"

	"galaxy/internal/dao/model"
	"galaxy/internal/svc"
)

func GetAllNotice(ctx context.Context, svCtx *svc.ServiceContext) ([]model.Notice, error) {
	var res []model.Notice
	err := svCtx.DB.WithContext(ctx).Where("id > ?", 0).Find(&res).Error
	return res, err
}
