package d7;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g2 extends b0 implements Serializable {
    public final transient h5 f;

    /* renamed from: g, reason: collision with root package name */
    public final transient int f6149g;

    public g2(h5 h5Var, int i6) {
        this.f = h5Var;
        this.f6149g = i6;
    }

    @Override // d7.p4
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // d7.p4
    public final boolean containsKey(Object obj) {
        return this.f.containsKey(obj);
    }

    @Override // d7.w, d7.p4
    public final v4 f() {
        return (e2) super.f();
    }

    @Override // d7.w
    public final boolean h(Object obj) {
        return obj != null && super.h(obj);
    }

    @Override // d7.w
    public final Map i() {
        throw new AssertionError("should never be called");
    }

    @Override // d7.w
    public final Collection j() {
        return new d2(this);
    }

    @Override // d7.w
    public final Set k() {
        throw new AssertionError("unreachable");
    }

    @Override // d7.w, d7.p4
    public final Set keySet() {
        return this.f.keySet();
    }

    @Override // d7.w
    public final v4 l() {
        return new e2(this);
    }

    @Override // d7.w
    public final Collection m() {
        return new f2(this);
    }

    @Override // d7.w, d7.p4
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public z1 d() {
        return this.f;
    }

    @Override // d7.w, d7.p4
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public q1 a() {
        return (q1) super.a();
    }

    @Override // d7.w, d7.p4
    public final boolean put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    public final k2 q() {
        return this.f.keySet();
    }

    public final q1 r() {
        return (q1) super.values();
    }

    @Override // d7.w, d7.p4
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // d7.p4
    public final int size() {
        return this.f6149g;
    }

    @Override // d7.w, d7.p4
    public final Collection values() {
        return (q1) super.values();
    }
}
