package q2;

import d2.f;
import m2.j;
import m2.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements d {

    /* renamed from: b, reason: collision with root package name */
    public final int f9190b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9191c = false;

    public a(int i6) {
        this.f9190b = i6;
        if (i6 <= 0) {
            throw new IllegalArgumentException("durationMillis must be > 0.");
        }
    }

    @Override // q2.d
    public final e a(o2.a aVar, j jVar) {
        if (!(jVar instanceof q)) {
            return new c(aVar, jVar);
        }
        if (((q) jVar).f8247c == f.f6025a) {
            return new c(aVar, jVar);
        }
        int i6 = this.f9190b;
        boolean z7 = this.f9191c;
        c6.c cVar = new c6.c();
        cVar.f3394c = aVar;
        cVar.d = jVar;
        cVar.f3392a = i6;
        cVar.f3393b = z7;
        if (i6 > 0) {
            return cVar;
        }
        throw new IllegalArgumentException("durationMillis must be > 0.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f9190b == aVar.f9190b && this.f9191c == aVar.f9191c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f9190b * 31) + (this.f9191c ? 1231 : 1237);
    }
}
