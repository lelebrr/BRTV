package androidx.media3.exoplayer.offline;

import androidx.media3.exoplayer.offline.DownloadService;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2337a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2338b;

    public /* synthetic */ i(int i6, Object obj) {
        this.f2337a = i6;
        this.f2338b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2337a) {
            case 0:
                ((DownloadService.ForegroundNotificationUpdater) this.f2338b).update();
                break;
            default:
                ((DownloadHelper) this.f2338b).lambda$onMediaPrepared$2();
                break;
        }
    }
}
