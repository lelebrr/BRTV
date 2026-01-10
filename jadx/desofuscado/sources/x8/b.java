package x8;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b {
    public static void a(int i6, int i10) {
        if (i6 < 0 || i6 >= i10) {
            throw new IndexOutOfBoundsException(a.e.m(i6, i10, "index: ", ", size: "));
        }
    }

    public static void b(int i6, int i10) {
        if (i6 < 0 || i6 > i10) {
            throw new IndexOutOfBoundsException(a.e.m(i6, i10, "index: ", ", size: "));
        }
    }

    public static void c(int i6, int i10, int i11) {
        if (i6 < 0 || i10 > i11) {
            StringBuilder sbV = a.e.v("fromIndex: ", i6, ", toIndex: ", i10, ", size: ");
            sbV.append(i11);
            throw new IndexOutOfBoundsException(sbV.toString());
        }
        if (i6 > i10) {
            throw new IllegalArgumentException(a.e.m(i6, i10, "fromIndex: ", " > toIndex: "));
        }
    }
}
