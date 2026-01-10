package d7;

import java.util.Collection;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class n2 extends g2 implements l5 {

    /* renamed from: h, reason: collision with root package name */
    public final transient k2 f6222h;

    /* renamed from: i, reason: collision with root package name */
    public transient m2 f6223i;

    public n2(h5 h5Var, int i6) {
        super(h5Var, i6);
        int i10 = k2.f6197c;
        this.f6222h = i5.f6179j;
    }

    @Override // d7.g2, d7.w, d7.p4
    public final Collection a() {
        m2 m2Var = this.f6223i;
        if (m2Var != null) {
            return m2Var;
        }
        m2 m2Var2 = new m2(this);
        this.f6223i = m2Var2;
        return m2Var2;
    }

    @Override // d7.p4
    public final Collection get(Object obj) {
        return (k2) b7.b.r((k2) this.f.get(obj), this.f6222h);
    }

    @Override // d7.g2
    /* renamed from: p */
    public final q1 a() {
        m2 m2Var = this.f6223i;
        if (m2Var != null) {
            return m2Var;
        }
        m2 m2Var2 = new m2(this);
        this.f6223i = m2Var2;
        return m2Var2;
    }

    @Override // d7.g2, d7.w, d7.p4
    public final Set a() {
        m2 m2Var = this.f6223i;
        if (m2Var != null) {
            return m2Var;
        }
        m2 m2Var2 = new m2(this);
        this.f6223i = m2Var2;
        return m2Var2;
    }

    @Override // d7.p4
    public final Set get(Object obj) {
        return (k2) b7.b.r((k2) this.f.get(obj), this.f6222h);
    }
}
