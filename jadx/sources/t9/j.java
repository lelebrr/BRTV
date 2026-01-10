package t9;

import java.util.concurrent.CancellationException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10201a;

    /* renamed from: b, reason: collision with root package name */
    public final n0 f10202b;

    /* renamed from: c, reason: collision with root package name */
    public final i9.l f10203c;
    public final Object d;

    /* renamed from: e, reason: collision with root package name */
    public final Throwable f10204e;

    public j(Object obj, n0 n0Var, i9.l lVar, Object obj2, Throwable th) {
        this.f10201a = obj;
        this.f10202b = n0Var;
        this.f10203c = lVar;
        this.d = obj2;
        this.f10204e = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Throwable] */
    public static j a(j jVar, n0 n0Var, CancellationException cancellationException, int i6) {
        Object obj = jVar.f10201a;
        if ((i6 & 2) != 0) {
            n0Var = jVar.f10202b;
        }
        n0 n0Var2 = n0Var;
        i9.l lVar = jVar.f10203c;
        Object obj2 = jVar.d;
        CancellationException cancellationException2 = cancellationException;
        if ((i6 & 16) != 0) {
            cancellationException2 = jVar.f10204e;
        }
        jVar.getClass();
        return new j(obj, n0Var2, lVar, obj2, cancellationException2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return j9.i.a(this.f10201a, jVar.f10201a) && j9.i.a(this.f10202b, jVar.f10202b) && j9.i.a(this.f10203c, jVar.f10203c) && j9.i.a(this.d, jVar.d) && j9.i.a(this.f10204e, jVar.f10204e);
    }

    public final int hashCode() {
        Object obj = this.f10201a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        n0 n0Var = this.f10202b;
        int iHashCode2 = (iHashCode + (n0Var == null ? 0 : n0Var.hashCode())) * 31;
        i9.l lVar = this.f10203c;
        int iHashCode3 = (iHashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f10204e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f10201a + ", cancelHandler=" + this.f10202b + ", onCancellation=" + this.f10203c + ", idempotentResume=" + this.d + ", cancelCause=" + this.f10204e + ')';
    }

    public /* synthetic */ j(Object obj, n0 n0Var, i9.l lVar, CancellationException cancellationException, int i6) {
        this(obj, (i6 & 2) != 0 ? null : n0Var, (i6 & 4) != 0 ? null : lVar, (Object) null, (i6 & 16) != 0 ? null : cancellationException);
    }
}
