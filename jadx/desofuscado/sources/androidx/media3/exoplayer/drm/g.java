package androidx.media3.exoplayer.drm;

import androidx.media3.exoplayer.drm.DrmSessionEventListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2248a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DrmSessionEventListener.EventDispatcher f2249b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DrmSessionEventListener f2250c;

    public /* synthetic */ g(DrmSessionEventListener.EventDispatcher eventDispatcher, DrmSessionEventListener drmSessionEventListener, int i6) {
        this.f2248a = i6;
        this.f2249b = eventDispatcher;
        this.f2250c = drmSessionEventListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2248a) {
            case 0:
                this.f2249b.lambda$drmKeysRemoved$4(this.f2250c);
                break;
            case 1:
                this.f2249b.lambda$drmKeysRestored$3(this.f2250c);
                break;
            case 2:
                this.f2249b.lambda$drmKeysLoaded$1(this.f2250c);
                break;
            default:
                this.f2249b.lambda$drmSessionReleased$5(this.f2250c);
                break;
        }
    }
}
