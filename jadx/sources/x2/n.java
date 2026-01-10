package x2;

import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final n3.f f10923a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f10924b;

    public n(n3.f fVar, Executor executor) {
        this.f10923a = fVar;
        this.f10924b = executor;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof n) {
            return this.f10923a.equals(((n) obj).f10923a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10923a.hashCode();
    }
}
