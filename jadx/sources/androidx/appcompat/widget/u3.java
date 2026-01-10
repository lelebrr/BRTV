package androidx.appcompat.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u3 extends o9.d {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f846j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f847k;

    /* renamed from: l, reason: collision with root package name */
    public int f848l;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Object f849m;

    public u3(v3 v3Var, int i6) {
        this.f846j = 0;
        this.f849m = v3Var;
        this.f848l = i6;
        this.f847k = false;
    }

    @Override // n0.b1
    public final void a() {
        switch (this.f846j) {
            case 0:
                if (!this.f847k) {
                    ((v3) this.f849m).f862a.setVisibility(this.f848l);
                    break;
                }
                break;
            default:
                int i6 = this.f848l + 1;
                this.f848l = i6;
                j.j jVar = (j.j) this.f849m;
                if (i6 == jVar.f7410a.size()) {
                    o9.d dVar = jVar.d;
                    if (dVar != null) {
                        dVar.a();
                    }
                    this.f848l = 0;
                    this.f847k = false;
                    jVar.f7413e = false;
                    break;
                }
                break;
        }
    }

    @Override // o9.d, n0.b1
    public void b() {
        switch (this.f846j) {
            case 0:
                this.f847k = true;
                break;
        }
    }

    @Override // o9.d, n0.b1
    public final void c() {
        switch (this.f846j) {
            case 0:
                ((v3) this.f849m).f862a.setVisibility(0);
                break;
            default:
                if (!this.f847k) {
                    this.f847k = true;
                    o9.d dVar = ((j.j) this.f849m).d;
                    if (dVar != null) {
                        dVar.c();
                        break;
                    }
                }
                break;
        }
    }

    public u3(j.j jVar) {
        this.f846j = 1;
        this.f849m = jVar;
        this.f847k = false;
        this.f848l = 0;
    }
}
