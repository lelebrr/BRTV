package b7;

import d7.h1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z extends m {

    /* renamed from: a, reason: collision with root package name */
    public final Iterable f3321a;

    public z(Iterable iterable) {
        this.f3321a = iterable;
    }

    @Override // b7.m
    public final Object a(h1 h1Var) {
        return this.f3321a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof z) {
            return this.f3321a.equals(((z) obj).f3321a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3321a.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.f3321a + ")";
    }
}
