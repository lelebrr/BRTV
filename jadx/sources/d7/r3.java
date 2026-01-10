package d7;

import java.lang.ref.ReferenceQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r3 extends h3 {

    /* renamed from: h, reason: collision with root package name */
    public final ReferenceQueue f6255h;

    public r3(c4 c4Var, int i6) {
        super(c4Var, i6);
        this.f6255h = new ReferenceQueue();
    }

    @Override // d7.h3
    public final void e() {
        while (this.f6255h.poll() != null) {
        }
    }

    @Override // d7.h3
    public final void f() {
        b(this.f6255h);
    }

    @Override // d7.h3
    public final h3 k() {
        return this;
    }
}
