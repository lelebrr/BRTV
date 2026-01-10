package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.source.MediaLoadData;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2321a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f2322b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Pair f2323c;
    public final /* synthetic */ MediaLoadData d;

    public /* synthetic */ n0(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, MediaLoadData mediaLoadData, int i6) {
        this.f2321a = i6;
        this.f2322b = forwardingEventListener;
        this.f2323c = pair;
        this.d = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2321a) {
            case 0:
                this.f2322b.lambda$onUpstreamDiscarded$4(this.f2323c, this.d);
                break;
            default:
                this.f2322b.lambda$onDownstreamFormatChanged$5(this.f2323c, this.d);
                break;
        }
    }
}
