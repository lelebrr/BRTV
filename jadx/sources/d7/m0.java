package d7;

import java.util.Comparator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m0 extends o0 {
    public static o0 g(int i6) {
        return i6 < 0 ? o0.f6228b : i6 > 0 ? o0.f6229c : o0.f6227a;
    }

    @Override // d7.o0
    public final o0 a(int i6, int i10) {
        return g(Integer.compare(i6, i10));
    }

    @Override // d7.o0
    public final o0 b(long j10, long j11) {
        return g(Long.compare(j10, j11));
    }

    @Override // d7.o0
    public final o0 c(Object obj, Object obj2, Comparator comparator) {
        return g(comparator.compare(obj, obj2));
    }

    @Override // d7.o0
    public final o0 d(boolean z7, boolean z10) {
        return g(Boolean.compare(z7, z10));
    }

    @Override // d7.o0
    public final o0 e(boolean z7, boolean z10) {
        return g(Boolean.compare(z10, z7));
    }

    @Override // d7.o0
    public final int f() {
        return 0;
    }
}
