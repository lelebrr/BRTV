package androidx.media3.common.util;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2082a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BackgroundThreadStateHandler f2083b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2084c;

    public /* synthetic */ a(BackgroundThreadStateHandler backgroundThreadStateHandler, Object obj, int i6) {
        this.f2082a = i6;
        this.f2083b = backgroundThreadStateHandler;
        this.f2084c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2082a) {
            case 0:
                this.f2083b.lambda$setStateInBackground$2(this.f2084c);
                break;
            default:
                this.f2083b.lambda$updateStateAsync$0(this.f2084c);
                break;
        }
    }
}
