package ka;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7807a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f7808b;

    public /* synthetic */ k(r rVar, int i6) {
        this.f7807a = i6;
        this.f7808b = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7807a) {
            case 0:
                this.f7808b.W.smoothScrollToPosition(0);
                break;
            case 1:
                o9.d.y(this.f7808b.Y.f6830e);
                break;
            case 2:
                o9.d.y(this.f7808b.Y.f6830e);
                break;
            default:
                r rVar = this.f7808b;
                int iA = rVar.Y.a();
                if (iA == -1) {
                    iA = 0;
                }
                o9.d.A(rVar.W, rVar.Y, iA);
                break;
        }
    }
}
