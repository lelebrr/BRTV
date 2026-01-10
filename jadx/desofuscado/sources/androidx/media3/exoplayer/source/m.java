package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Consumer;
import androidx.media3.extractor.SeekMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2394a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2395b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2396c;

    public /* synthetic */ m(Object obj, int i6, Object obj2) {
        this.f2394a = i6;
        this.f2395b = obj;
        this.f2396c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2394a) {
            case 0:
                ((ProgressiveMediaPeriod) this.f2395b).lambda$seekMap$1((SeekMap) this.f2396c);
                break;
            default:
                ((Consumer) this.f2395b).accept((MediaSourceEventListener) this.f2396c);
                break;
        }
    }
}
