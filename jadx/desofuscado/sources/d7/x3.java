package d7;

import java.lang.ref.ReferenceQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x3 extends h3 {

    /* renamed from: h, reason: collision with root package name */
    public final ReferenceQueue f6300h;

    /* renamed from: i, reason: collision with root package name */
    public final ReferenceQueue f6301i;

    public x3(c4 c4Var, int i6) {
        super(c4Var, i6);
        this.f6300h = new ReferenceQueue();
        this.f6301i = new ReferenceQueue();
    }

    @Override // d7.h3
    public final void e() {
        while (this.f6300h.poll() != null) {
        }
    }

    @Override // d7.h3
    public final void f() {
        a(this.f6300h);
        b(this.f6301i);
    }

    @Override // d7.h3
    public final h3 k() {
        return this;
    }
}
