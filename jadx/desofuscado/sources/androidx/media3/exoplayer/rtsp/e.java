package androidx.media3.exoplayer.rtsp;

import android.os.HandlerThread;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2359a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2360b;

    public /* synthetic */ e(int i6, Object obj) {
        this.f2359a = i6;
        this.f2360b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2359a) {
            case 0:
                RtspMediaPeriod.access$500((RtspMediaPeriod) this.f2360b);
                break;
            case 1:
                RtspMediaPeriod.access$500((RtspMediaPeriod) this.f2360b);
                break;
            default:
                ((HandlerThread) this.f2360b).quit();
                break;
        }
    }
}
