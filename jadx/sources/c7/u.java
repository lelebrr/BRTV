package c7;

import java.lang.ref.ReferenceQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class u implements v {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3469a;

    public u(Object obj) {
        this.f3469a = obj;
    }

    @Override // c7.v
    public final c0 a() {
        return null;
    }

    @Override // c7.v
    public int d() {
        return 1;
    }

    @Override // c7.v
    public final Object get() {
        return this.f3469a;
    }

    @Override // c7.v
    public final boolean isActive() {
        return true;
    }

    @Override // c7.v
    public final boolean isLoading() {
        return false;
    }

    @Override // c7.v
    public final void c(Object obj) {
    }

    @Override // c7.v
    public final v b(ReferenceQueue referenceQueue, Object obj, c0 c0Var) {
        return this;
    }
}
