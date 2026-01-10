package androidx.media3.exoplayer.drm;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager;
import com.google.common.util.concurrent.SettableFuture;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2243a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2244b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2245c;

    public /* synthetic */ c(Object obj, int i6, Object obj2) {
        this.f2243a = i6;
        this.f2244b = obj;
        this.f2245c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2243a) {
            case 0:
                ((DefaultDrmSessionManager.PreacquiredSessionReference) this.f2244b).lambda$acquire$0((Format) this.f2245c);
                break;
            default:
                ((OfflineLicenseHelper) this.f2244b).lambda$releaseManagerOnHandlerThread$4((SettableFuture) this.f2245c);
                break;
        }
    }
}
