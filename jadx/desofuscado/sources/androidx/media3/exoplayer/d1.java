package androidx.media3.exoplayer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class d1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2238a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f2239b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f2240c;
    public final /* synthetic */ Object d;

    public /* synthetic */ d1(Object obj, boolean z7, boolean z10, int i6) {
        this.f2238a = i6;
        this.d = obj;
        this.f2239b = z7;
        this.f2240c = z10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2238a) {
            case 0:
                ((WakeLockManager) this.d).lambda$setEnabled$0(this.f2239b, this.f2240c);
                break;
            default:
                ((WifiLockManager) this.d).lambda$setEnabled$0(this.f2239b, this.f2240c);
                break;
        }
    }
}
