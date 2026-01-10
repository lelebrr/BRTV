package q1;

import android.media.MediaRouter;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b1 extends c0 {

    /* renamed from: a, reason: collision with root package name */
    public final MediaRouter.RouteInfo f8941a;

    public b1(MediaRouter.RouteInfo routeInfo) {
        this.f8941a = routeInfo;
    }

    @Override // q1.c0
    public final void g(int i6) {
        this.f8941a.requestSetVolume(i6);
    }

    @Override // q1.c0
    public final void j(int i6) {
        this.f8941a.requestUpdateVolume(i6);
    }
}
