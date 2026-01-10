package q1;

import android.media.MediaRouter2;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends MediaRouter2.ControllerCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f9029a;

    public k(p pVar) {
        this.f9029a = pVar;
    }

    @Override // android.media.MediaRouter2.ControllerCallback
    public final void onControllerUpdated(MediaRouter2.RoutingController routingController) {
        this.f9029a.j(routingController);
    }
}
