package androidx.media3.exoplayer.scheduler;

import androidx.media3.exoplayer.scheduler.RequirementsWatcher;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2367a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RequirementsWatcher.NetworkCallback f2368b;

    public /* synthetic */ a(RequirementsWatcher.NetworkCallback networkCallback, int i6) {
        this.f2367a = i6;
        this.f2368b = networkCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2367a) {
            case 0:
                this.f2368b.lambda$postCheckRequirements$0();
                break;
            default:
                this.f2368b.lambda$postRecheckNotMetNetworkRequirements$1();
                break;
        }
    }
}
