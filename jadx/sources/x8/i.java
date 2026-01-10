package x8;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class i extends u7.d {
    public static boolean B(Object[] objArr, Object obj) {
        int i6;
        j9.i.f(objArr, "<this>");
        if (obj == null) {
            int length = objArr.length;
            i6 = 0;
            while (i6 < length) {
                if (objArr[i6] == null) {
                    break;
                }
                i6++;
            }
            i6 = -1;
        } else {
            int length2 = objArr.length;
            for (int i10 = 0; i10 < length2; i10++) {
                if (obj.equals(objArr[i10])) {
                    i6 = i10;
                    break;
                }
            }
            i6 = -1;
        }
        return i6 >= 0;
    }

    public static void C(int i6, int i10, int i11, int[] iArr, int[] iArr2) {
        j9.i.f(iArr, "<this>");
        j9.i.f(iArr2, "destination");
        System.arraycopy(iArr, i10, iArr2, i6, i11 - i10);
    }

    public static void D(int i6, int i10, int i11, Object[] objArr, Object[] objArr2) {
        j9.i.f(objArr, "<this>");
        j9.i.f(objArr2, "destination");
        System.arraycopy(objArr, i10, objArr2, i6, i11 - i10);
    }

    public static void E(byte[] bArr, int i6, int i10, byte[] bArr2, int i11) {
        j9.i.f(bArr, "<this>");
        j9.i.f(bArr2, "destination");
        System.arraycopy(bArr, i10, bArr2, i6, i11 - i10);
    }

    public static /* synthetic */ void F(int i6, int i10, int i11, Object[] objArr, Object[] objArr2) {
        if ((i11 & 4) != 0) {
            i6 = 0;
        }
        D(0, i6, i10, objArr, objArr2);
    }

    public static byte[] G(byte[] bArr, int i6, int i10) {
        j9.i.f(bArr, "<this>");
        u7.d.e(i10, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i6, i10);
        j9.i.e(bArrCopyOfRange, "copyOfRange(...)");
        return bArrCopyOfRange;
    }

    public static Object[] H(Object[] objArr, int i6, int i10) {
        j9.i.f(objArr, "<this>");
        u7.d.e(i10, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i6, i10);
        j9.i.e(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static void I(Object[] objArr, int i6, int i10) {
        j9.i.f(objArr, "<this>");
        Arrays.fill(objArr, i6, i10, (Object) null);
    }

    public static ArrayList J(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static char K(char[] cArr) {
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static List L(Object[] objArr) {
        j9.i.f(objArr, "<this>");
        int length = objArr.length;
        return length != 0 ? length != 1 ? new ArrayList(new g(objArr, false)) : a2.a.F(objArr[0]) : r.f11098a;
    }
}
