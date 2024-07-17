package handler

import (
	"net/http"

	"galaxy/internal/logic"
	"galaxy/internal/svc"
	"galaxy/internal/types"
	"github.com/zeromicro/go-zero/rest/httpx"
)

func GalaxyHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.Request
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := logic.NewGalaxyLogic(r.Context(), svcCtx)
		resp, err := l.Galaxy(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
