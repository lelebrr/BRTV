package c7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r extends t {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f3458e;
    public volatile long f;

    /* renamed from: g, reason: collision with root package name */
    public c0 f3459g;

    /* renamed from: h, reason: collision with root package name */
    public c0 f3460h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(Object obj, int i6, c0 c0Var, int i10) {
        super(obj, i6, c0Var);
        this.f3458e = i10;
    }

    @Override // c7.g, c7.c0
    public void d(long j10) {
        switch (this.f3458e) {
            case 1:
                this.f = j10;
                break;
            default:
                super.d(j10);
                break;
        }
    }

    @Override // c7.g, c7.c0
    public c0 e() {
        switch (this.f3458e) {
            case 0:
                return this.f3460h;
            default:
                return super.e();
        }
    }

    @Override // c7.g, c7.c0
    public void f(c0 c0Var) {
        switch (this.f3458e) {
            case 1:
                this.f3459g = c0Var;
                break;
            default:
                super.f(c0Var);
                break;
        }
    }

    @Override // c7.g, c7.c0
    public void g(c0 c0Var) {
        switch (this.f3458e) {
            case 1:
                this.f3460h = c0Var;
                break;
            default:
                super.g(c0Var);
                break;
        }
    }

    @Override // c7.g, c7.c0
    public void h(c0 c0Var) {
        switch (this.f3458e) {
            case 0:
                this.f3459g = c0Var;
                break;
            default:
                super.h(c0Var);
                break;
        }
    }

    @Override // c7.g, c7.c0
    public c0 i() {
        switch (this.f3458e) {
            case 0:
                return this.f3459g;
            default:
                return super.i();
        }
    }

    @Override // c7.g, c7.c0
    public long k() {
        switch (this.f3458e) {
            case 1:
                return this.f;
            default:
                return super.k();
        }
    }

    @Override // c7.g, c7.c0
    public void l(long j10) {
        switch (this.f3458e) {
            case 0:
                this.f = j10;
                break;
            default:
                super.l(j10);
                break;
        }
    }

    @Override // c7.g, c7.c0
    public c0 m() {
        switch (this.f3458e) {
            case 1:
                return this.f3460h;
            default:
                return super.m();
        }
    }

    @Override // c7.g, c7.c0
    public void n(c0 c0Var) {
        switch (this.f3458e) {
            case 0:
                this.f3460h = c0Var;
                break;
            default:
                super.n(c0Var);
                break;
        }
    }

    @Override // c7.g, c7.c0
    public c0 o() {
        switch (this.f3458e) {
            case 1:
                return this.f3459g;
            default:
                return super.o();
        }
    }

    @Override // c7.g, c7.c0
    public long p() {
        switch (this.f3458e) {
            case 0:
                return this.f;
            default:
                return super.p();
        }
    }
}
