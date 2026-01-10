package androidx.media3.exoplayer.source;

import android.os.Handler;
import android.os.Message;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2380a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CompositeMediaSource f2381b;

    public /* synthetic */ b(CompositeMediaSource compositeMediaSource, int i6) {
        this.f2380a = i6;
        this.f2381b = compositeMediaSource;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f2380a) {
            case 0:
                return ((ConcatenatingMediaSource) this.f2381b).handleMessage(message);
            default:
                return ((ConcatenatingMediaSource2) this.f2381b).handleMessage(message);
        }
    }
}
