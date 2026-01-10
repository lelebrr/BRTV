package androidx.media3.exoplayer.drm;

import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2246a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2247b;

    public /* synthetic */ d(int i6, Object obj) {
        this.f2246a = i6;
        this.f2247b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2246a) {
            case 0:
                ((DefaultDrmSessionManager.PreacquiredSessionReference) this.f2247b).lambda$release$1();
                break;
            default:
                ((DefaultDrmSession) this.f2247b).release(null);
                break;
        }
    }
}
