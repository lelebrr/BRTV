package q1;

import android.media.MediaRouter2;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n extends MediaRouter2.RouteCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9076a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f9077b;

    public /* synthetic */ n(p pVar, int i6) {
        this.f9076a = i6;
        this.f9077b = pVar;
    }

    @Override // android.media.MediaRouter2.RouteCallback
    public void onRoutesAdded(List list) {
        switch (this.f9076a) {
            case 0:
                this.f9077b.i();
                break;
            default:
                super.onRoutesAdded(list);
                break;
        }
    }

    @Override // android.media.MediaRouter2.RouteCallback
    public void onRoutesChanged(List list) {
        switch (this.f9076a) {
            case 0:
                this.f9077b.i();
                break;
            default:
                super.onRoutesChanged(list);
                break;
        }
    }

    @Override // android.media.MediaRouter2.RouteCallback
    public void onRoutesRemoved(List list) {
        switch (this.f9076a) {
            case 0:
                this.f9077b.i();
                break;
            default:
                super.onRoutesRemoved(list);
                break;
        }
    }

    @Override // android.media.MediaRouter2.RouteCallback
    public void onRoutesUpdated(List list) {
        switch (this.f9076a) {
            case 1:
                this.f9077b.i();
                break;
            default:
                super.onRoutesUpdated(list);
                break;
        }
    }
}
