package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.MediaSourceEventListener;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2388a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaSourceEventListener.EventDispatcher f2389b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LoadEventInfo f2390c;
    public final /* synthetic */ MediaLoadData d;

    public /* synthetic */ j(MediaSourceEventListener.EventDispatcher eventDispatcher, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i6) {
        this.f2388a = i6;
        this.f2389b = eventDispatcher;
        this.f2390c = loadEventInfo;
        this.d = mediaLoadData;
    }

    @Override // androidx.media3.common.util.Consumer, l8.a
    public final void accept(Object obj) {
        MediaSourceEventListener mediaSourceEventListener = (MediaSourceEventListener) obj;
        switch (this.f2388a) {
            case 0:
                this.f2389b.lambda$loadCompleted$1(this.f2390c, this.d, mediaSourceEventListener);
                break;
            default:
                this.f2389b.lambda$loadCanceled$2(this.f2390c, this.d, mediaSourceEventListener);
                break;
        }
    }
}
