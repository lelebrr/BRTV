package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b7 implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public final c7 f4116a;

    /* renamed from: b, reason: collision with root package name */
    public c7 f4117b;

    public b7(c7 c7Var) {
        this.f4116a = c7Var;
        if (c7Var.g()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f4117b = (c7) c7Var.h(4, null);
    }

    public final c7 a() {
        c7 c7VarB = b();
        c7VarB.getClass();
        boolean z7 = true;
        byte bByteValue = ((Byte) c7VarB.h(1, null)).byteValue();
        if (bByteValue != 1) {
            if (bByteValue == 0) {
                z7 = false;
            } else {
                boolean zF = s7.f4412c.a(c7VarB.getClass()).f(c7VarB);
                c7VarB.h(2, true == zF ? c7VarB : null);
                z7 = zF;
            }
        }
        if (z7) {
            return c7VarB;
        }
        throw new androidx.fragment.app.q("Message was missing required fields.  (Lite runtime could not determine which fields were missing).", 3);
    }

    public final c7 b() {
        if (!this.f4117b.g()) {
            return this.f4117b;
        }
        c7 c7Var = this.f4117b;
        c7Var.getClass();
        s7.f4412c.a(c7Var.getClass()).d(c7Var);
        c7Var.d();
        return this.f4117b;
    }

    public final void c() {
        if (this.f4117b.g()) {
            return;
        }
        c7 c7Var = (c7) this.f4116a.h(4, null);
        s7.f4412c.a(c7Var.getClass()).g(c7Var, this.f4117b);
        this.f4117b = c7Var;
    }

    public final Object clone() {
        b7 b7Var = (b7) this.f4116a.h(5, null);
        b7Var.f4117b = b();
        return b7Var;
    }
}
