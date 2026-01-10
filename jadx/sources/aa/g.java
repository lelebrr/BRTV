package aa;

import java.util.concurrent.atomic.AtomicReferenceArray;
import x9.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends s {

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReferenceArray f193e;

    public g(long j10, g gVar, int i6) {
        super(j10, gVar, i6);
        this.f193e = new AtomicReferenceArray(f.f);
    }

    @Override // x9.s
    public final int d() {
        return f.f;
    }

    @Override // x9.s
    public final void e(int i6) {
        this.f193e.set(i6, f.f192e);
        if (s.d.incrementAndGet(this) == f.f) {
            b();
        }
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.f11130c + ", hashCode=" + hashCode() + ']';
    }
}
