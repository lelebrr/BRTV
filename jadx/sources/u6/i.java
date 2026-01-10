package u6;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i extends e {

    /* renamed from: c, reason: collision with root package name */
    public final f f10387c;
    public final float d;

    public i(f fVar, float f) {
        super(0);
        this.f10387c = fVar;
        this.d = f;
    }

    @Override // u6.e
    public final boolean d() {
        return true;
    }

    @Override // u6.e
    public final void g(float f, float f3, float f4, w wVar) {
        this.f10387c.g(f, f3 - this.d, f4, wVar);
    }
}
