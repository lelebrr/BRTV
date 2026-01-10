package d7;

import java.lang.ref.ReferenceQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u3 extends h3 {

    /* renamed from: h, reason: collision with root package name */
    public final ReferenceQueue f6279h;

    public u3(c4 c4Var, int i6) {
        super(c4Var, i6);
        this.f6279h = new ReferenceQueue();
    }

    @Override // d7.h3
    public final void e() {
        while (this.f6279h.poll() != null) {
        }
    }

    @Override // d7.h3
    public final void f() {
        a(this.f6279h);
    }

    @Override // d7.h3
    public final h3 k() {
        return this;
    }
}
