package androidx.media3.exoplayer.drm;

import com.google.common.util.concurrent.SettableFuture;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2257a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ OfflineLicenseHelper f2258b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DrmSession f2259c;
    public final /* synthetic */ SettableFuture d;

    public /* synthetic */ o(DrmSession drmSession, OfflineLicenseHelper offlineLicenseHelper, SettableFuture settableFuture) {
        this.f2257a = 1;
        this.f2258b = offlineLicenseHelper;
        this.f2259c = drmSession;
        this.d = settableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2257a) {
            case 0:
                this.f2258b.lambda$getLicenseDurationRemainingSec$0(this.d, this.f2259c);
                break;
            case 1:
                this.f2258b.lambda$acquireFirstSessionOnHandlerThread$3(this.f2259c, this.d);
                break;
            default:
                this.f2258b.lambda$acquireSessionAndGetOfflineLicenseKeySetIdOnHandlerThread$1(this.d, this.f2259c);
                break;
        }
    }

    public /* synthetic */ o(OfflineLicenseHelper offlineLicenseHelper, SettableFuture settableFuture, DrmSession drmSession, int i6) {
        this.f2257a = i6;
        this.f2258b = offlineLicenseHelper;
        this.d = settableFuture;
        this.f2259c = drmSession;
    }
}
