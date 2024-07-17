package logic

import (
	"context"
	"galaxy/internal/dao/model"
	"log"

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

func (l *GalaxyLogic) Galaxy(req *types.Request) (resp *types.Response, err error) {
	// todo: add your logic here and delete this line
	data, err := model.GetAllNotice(l.ctx, l.svcCtx)
	log.Println(data, err)
	return
}
