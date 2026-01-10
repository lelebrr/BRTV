package k7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g implements h7.g {

    /* renamed from: a, reason: collision with root package name */
    public boolean f7750a = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f7751b = false;

    /* renamed from: c, reason: collision with root package name */
    public h7.c f7752c;
    public final e d;

    public g(e eVar) {
        this.d = eVar;
    }

    @Override // h7.g
    public final h7.g b(String str) {
        if (this.f7750a) {
            throw new h7.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f7750a = true;
        this.d.c(this.f7752c, str, this.f7751b);
        return this;
    }

    @Override // h7.g
    public final h7.g c(boolean z7) {
        if (this.f7750a) {
            throw new h7.b("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f7750a = true;
        this.d.b(this.f7752c, z7 ? 1 : 0, this.f7751b);
        return this;
    }
}
