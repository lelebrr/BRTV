package androidx.media3.exoplayer.source;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2392a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProgressiveMediaPeriod f2393b;

    public /* synthetic */ l(ProgressiveMediaPeriod progressiveMediaPeriod, int i6) {
        this.f2392a = i6;
        this.f2393b = progressiveMediaPeriod;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2392a) {
            case 0:
                this.f2393b.lambda$onLengthKnown$2();
                break;
            case 1:
                this.f2393b.maybeFinishPrepare();
                break;
            default:
                this.f2393b.lambda$new$0();
                break;
        }
    }
}
