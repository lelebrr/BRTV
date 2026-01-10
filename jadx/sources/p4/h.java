package p4;

import com.google.android.gms.cast.CastRemoteDisplayLocalService;
import q1.m0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastRemoteDisplayLocalService f8877a;

    public h(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.f8877a = castRemoteDisplayLocalService;
    }

    @Override // q1.m0
    public final void k() {
        v4.b bVar = CastRemoteDisplayLocalService.d;
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.f8877a;
        castRemoteDisplayLocalService.a("onRouteUnselected");
        castRemoteDisplayLocalService.a("onRouteUnselected, no device was selected");
    }
}
