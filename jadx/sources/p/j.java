package p;

import java.util.ConcurrentModificationException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f8850a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f8851b = new Object();

    public static final void a(f fVar, int i6) {
        j9.i.f(fVar, "<this>");
        fVar.f8838a = new int[i6];
        fVar.f8839b = new Object[i6];
    }

    public static final int b(f fVar, Object obj, int i6) {
        j9.i.f(fVar, "<this>");
        int i10 = fVar.f8840c;
        if (i10 == 0) {
            return -1;
        }
        try {
            int iA = q.a.a(fVar.f8840c, i6, fVar.f8838a);
            if (iA < 0 || j9.i.a(obj, fVar.f8839b[iA])) {
                return iA;
            }
            int i11 = iA + 1;
            while (i11 < i10 && fVar.f8838a[i11] == i6) {
                if (j9.i.a(obj, fVar.f8839b[i11])) {
                    return i11;
                }
                i11++;
            }
            for (int i12 = iA - 1; i12 >= 0 && fVar.f8838a[i12] == i6; i12--) {
                if (j9.i.a(obj, fVar.f8839b[i12])) {
                    return i12;
                }
            }
            return ~i11;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }
}
