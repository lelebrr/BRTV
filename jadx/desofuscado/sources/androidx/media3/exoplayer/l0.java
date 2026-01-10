package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.source.MediaSource;
import d7.s1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class l0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2302a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2303b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2304c;
    public final /* synthetic */ Object d;

    public /* synthetic */ l0(Object obj, Object obj2, Object obj3, int i6) {
        this.f2302a = i6;
        this.f2303b = obj;
        this.f2304c = obj2;
        this.d = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2302a) {
            case 0:
                ((MediaPeriodQueue) this.f2303b).lambda$notifyQueueUpdate$0((s1) this.f2304c, (MediaSource.MediaPeriodId) this.d);
                break;
            default:
                ((MediaSourceList.ForwardingEventListener) this.f2303b).lambda$onDrmSessionManagerError$8((Pair) this.f2304c, (Exception) this.d);
                break;
        }
    }
}
