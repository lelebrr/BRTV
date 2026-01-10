package m2;

import androidx.lifecycle.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends androidx.lifecycle.p {

    /* renamed from: b, reason: collision with root package name */
    public static final g f8182b = new g();

    /* renamed from: c, reason: collision with root package name */
    public static final f f8183c = new f();

    @Override // androidx.lifecycle.p
    public final void a(v vVar) {
        if (!(vVar instanceof androidx.lifecycle.e)) {
            throw new IllegalArgumentException((vVar + " must implement androidx.lifecycle.DefaultLifecycleObserver.").toString());
        }
        androidx.lifecycle.e eVar = (androidx.lifecycle.e) vVar;
        f fVar = f8183c;
        eVar.c(fVar);
        eVar.onStart(fVar);
        eVar.b(fVar);
    }

    @Override // androidx.lifecycle.p
    public final androidx.lifecycle.o b() {
        return androidx.lifecycle.o.f1983e;
    }

    public final String toString() {
        return "coil.request.GlobalLifecycle";
    }

    @Override // androidx.lifecycle.p
    public final void c(v vVar) {
    }
}
