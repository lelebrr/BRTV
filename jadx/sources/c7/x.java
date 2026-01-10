package c7;

import java.lang.ref.ReferenceQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x extends z {
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public volatile long f3472e;
    public c0 f;

    /* renamed from: g, reason: collision with root package name */
    public c0 f3473g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x(ReferenceQueue referenceQueue, Object obj, int i6, c0 c0Var, int i10) {
        super(referenceQueue, obj, i6, c0Var);
        this.d = i10;
    }

    @Override // c7.z, c7.c0
    public void d(long j10) {
        switch (this.d) {
            case 1:
                this.f3472e = j10;
                break;
            default:
                super.d(j10);
                break;
        }
    }

    @Override // c7.z, c7.c0
    public c0 e() {
        switch (this.d) {
            case 0:
                return this.f3473g;
            default:
                return super.e();
        }
    }

    @Override // c7.z, c7.c0
    public void f(c0 c0Var) {
        switch (this.d) {
            case 1:
                this.f = c0Var;
                break;
            default:
                super.f(c0Var);
                break;
        }
    }

    @Override // c7.z, c7.c0
    public void g(c0 c0Var) {
        switch (this.d) {
            case 1:
                this.f3473g = c0Var;
                break;
            default:
                super.g(c0Var);
                break;
        }
    }

    @Override // c7.z, c7.c0
    public void h(c0 c0Var) {
        switch (this.d) {
            case 0:
                this.f = c0Var;
                break;
            default:
                super.h(c0Var);
                break;
        }
    }

    @Override // c7.z, c7.c0
    public c0 i() {
        switch (this.d) {
            case 0:
                return this.f;
            default:
                return super.i();
        }
    }

    @Override // c7.z, c7.c0
    public long k() {
        switch (this.d) {
            case 1:
                return this.f3472e;
            default:
                return super.k();
        }
    }

    @Override // c7.z, c7.c0
    public void l(long j10) {
        switch (this.d) {
            case 0:
                this.f3472e = j10;
                break;
            default:
                super.l(j10);
                break;
        }
    }

    @Override // c7.z, c7.c0
    public c0 m() {
        switch (this.d) {
            case 1:
                return this.f3473g;
            default:
                return super.m();
        }
    }

    @Override // c7.z, c7.c0
    public void n(c0 c0Var) {
        switch (this.d) {
            case 0:
                this.f3473g = c0Var;
                break;
            default:
                super.n(c0Var);
                break;
        }
    }

    @Override // c7.z, c7.c0
    public c0 o() {
        switch (this.d) {
            case 1:
                return this.f;
            default:
                return super.o();
        }
    }

    @Override // c7.z, c7.c0
    public long p() {
        switch (this.d) {
            case 0:
                return this.f3472e;
            default:
                return super.p();
        }
    }
}
