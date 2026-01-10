package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class q0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2347a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f2348b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Pair f2349c;
    public final /* synthetic */ LoadEventInfo d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f2350e;

    public /* synthetic */ q0(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i6) {
        this.f2347a = i6;
        this.f2348b = forwardingEventListener;
        this.f2349c = pair;
        this.d = loadEventInfo;
        this.f2350e = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2347a) {
            case 0:
                this.f2348b.lambda$onLoadCanceled$2(this.f2349c, this.d, this.f2350e);
                break;
            default:
                this.f2348b.lambda$onLoadCompleted$1(this.f2349c, this.d, this.f2350e);
                break;
        }
    }
}
