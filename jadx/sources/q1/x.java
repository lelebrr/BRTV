package q1;

import android.os.Bundle;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f9174a;

    /* renamed from: b, reason: collision with root package name */
    public l0 f9175b;

    public x(l0 l0Var, boolean z7) {
        if (l0Var == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        Bundle bundle = new Bundle();
        this.f9174a = bundle;
        this.f9175b = l0Var;
        bundle.putBundle("selector", l0Var.f9056a);
        bundle.putBoolean("activeScan", z7);
    }

    public final void a() {
        if (this.f9175b == null) {
            l0 l0VarB = l0.b(this.f9174a.getBundle("selector"));
            this.f9175b = l0VarB;
            if (l0VarB == null) {
                this.f9175b = l0.f9055c;
            }
        }
    }

    public final boolean b() {
        return this.f9174a.getBoolean("activeScan");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        a();
        l0 l0Var = this.f9175b;
        xVar.a();
        return l0Var.equals(xVar.f9175b) && b() == xVar.b();
    }

    public final int hashCode() {
        a();
        return this.f9175b.hashCode() ^ (b() ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DiscoveryRequest{ selector=");
        a();
        sb.append(this.f9175b);
        sb.append(", activeScan=");
        sb.append(b());
        sb.append(", isValid=");
        a();
        this.f9175b.a();
        sb.append(!r1.f9057b.contains(null));
        sb.append(" }");
        return sb.toString();
    }

    public x(Bundle bundle) {
        this.f9174a = bundle;
    }
}
