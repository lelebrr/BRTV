package androidx.media3.exoplayer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2231a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f2232b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2233c;

    public /* synthetic */ c1(int i6, Object obj, boolean z7) {
        this.f2231a = i6;
        this.f2233c = obj;
        this.f2232b = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2231a) {
            case 0:
                ((WakeLockManager) this.f2233c).lambda$setStayAwake$1(this.f2232b);
                break;
            default:
                ((WifiLockManager) this.f2233c).lambda$setStayAwake$1(this.f2232b);
                break;
        }
    }
}
