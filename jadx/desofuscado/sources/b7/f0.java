package b7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 implements e0, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final transient Object f3301a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final e0 f3302b;

    /* renamed from: c, reason: collision with root package name */
    public volatile transient boolean f3303c;
    public transient Object d;

    public f0(e0 e0Var) {
        this.f3302b = e0Var;
    }

    @Override // b7.e0
    public final Object get() {
        if (!this.f3303c) {
            synchronized (this.f3301a) {
                try {
                    if (!this.f3303c) {
                        Object obj = this.f3302b.get();
                        this.d = obj;
                        this.f3303c = true;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.d;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (this.f3303c) {
            obj = "<supplier that returned " + this.d + ">";
        } else {
            obj = this.f3302b;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
