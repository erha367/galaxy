package logic

import (
	"context"
	"galaxy/internal/dao/query"
	"galaxy/internal/svc"
	"galaxy/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type GalaxyLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewGalaxyLogic(ctx context.Context, svcCtx *svc.ServiceContext) *GalaxyLogic {
	return &GalaxyLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *GalaxyLogic) Galaxy(req *types.Request) (resp *types.CommonRes, err error) {
	// todo: add your logic here and delete this line
	data, err := query.GetAllNotice(l.ctx, l.svcCtx)
	if err != nil {
		return
	}
	return &types.CommonRes{
		Data: data,
	}, nil
}
