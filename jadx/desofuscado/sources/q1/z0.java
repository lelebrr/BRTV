package q1;

import android.media.MediaRouter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z0 extends MediaRouter.VolumeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final e1 f9189a;

    public z0(e1 e1Var) {
        this.f9189a = e1Var;
    }

    @Override // android.media.MediaRouter.VolumeCallback
    public final void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i6) {
        this.f9189a.getClass();
        d1 d1VarM = e1.m(routeInfo);
        if (d1VarM != null) {
            d1VarM.f8951a.j(i6);
        }
    }

    @Override // android.media.MediaRouter.VolumeCallback
    public final void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i6) {
        this.f9189a.getClass();
        d1 d1VarM = e1.m(routeInfo);
        if (d1VarM != null) {
            d1VarM.f8951a.k(i6);
        }
    }
}
