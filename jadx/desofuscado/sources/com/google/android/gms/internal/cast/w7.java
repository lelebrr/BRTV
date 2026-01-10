package com.google.android.gms.internal.cast;

import java.util.Arrays;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class w7 {

    /* renamed from: a, reason: collision with root package name */
    public static final k2 f4454a;

    static {
        s7 s7Var = s7.f4412c;
        f4454a = new k2(15);
    }

    public static void A(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof k7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.x(i6, ((Long) list.get(i10)).longValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Long) list.get(i12)).getClass();
                i11 += 8;
            }
            x6Var.E(i11);
            while (i10 < list.size()) {
                x6Var.y(((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        k7 k7Var = (k7) list;
        if (!z7) {
            while (i10 < k7Var.f4295c) {
                x6Var.x(i6, k7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < k7Var.f4295c; i14++) {
            k7Var.e(i14);
            i13 += 8;
        }
        x6Var.E(i13);
        while (i10 < k7Var.f4295c) {
            x6Var.y(k7Var.e(i10));
            i10++;
        }
    }

    public static void B(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof d7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    int iIntValue = ((Integer) list.get(i10)).intValue();
                    x6Var.D(i6, (iIntValue >> 31) ^ (iIntValue + iIntValue));
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int iK = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                int iIntValue2 = ((Integer) list.get(i11)).intValue();
                iK += x6.K((iIntValue2 >> 31) ^ (iIntValue2 + iIntValue2));
            }
            x6Var.E(iK);
            while (i10 < list.size()) {
                int iIntValue3 = ((Integer) list.get(i10)).intValue();
                x6Var.E((iIntValue3 >> 31) ^ (iIntValue3 + iIntValue3));
                i10++;
            }
            return;
        }
        d7 d7Var = (d7) list;
        if (!z7) {
            while (i10 < d7Var.f4137c) {
                int iE = d7Var.e(i10);
                x6Var.D(i6, (iE >> 31) ^ (iE + iE));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int iK2 = 0;
        for (int i12 = 0; i12 < d7Var.f4137c; i12++) {
            int iE2 = d7Var.e(i12);
            iK2 += x6.K((iE2 >> 31) ^ (iE2 + iE2));
        }
        x6Var.E(iK2);
        while (i10 < d7Var.f4137c) {
            int iE3 = d7Var.e(i10);
            x6Var.E((iE3 >> 31) ^ (iE3 + iE3));
            i10++;
        }
    }

    public static void a(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof k7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    long jLongValue = ((Long) list.get(i10)).longValue();
                    x6Var.F(i6, (jLongValue >> 63) ^ (jLongValue + jLongValue));
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int iS = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                long jLongValue2 = ((Long) list.get(i11)).longValue();
                iS += x6.s((jLongValue2 >> 63) ^ (jLongValue2 + jLongValue2));
            }
            x6Var.E(iS);
            while (i10 < list.size()) {
                long jLongValue3 = ((Long) list.get(i10)).longValue();
                x6Var.G((jLongValue3 >> 63) ^ (jLongValue3 + jLongValue3));
                i10++;
            }
            return;
        }
        k7 k7Var = (k7) list;
        if (!z7) {
            while (i10 < k7Var.f4295c) {
                long jE = k7Var.e(i10);
                x6Var.F(i6, (jE >> 63) ^ (jE + jE));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int iS2 = 0;
        for (int i12 = 0; i12 < k7Var.f4295c; i12++) {
            long jE2 = k7Var.e(i12);
            iS2 += x6.s((jE2 >> 63) ^ (jE2 + jE2));
        }
        x6Var.E(iS2);
        while (i10 < k7Var.f4295c) {
            long jE3 = k7Var.e(i10);
            x6Var.G((jE3 >> 63) ^ (jE3 + jE3));
            i10++;
        }
    }

    public static void b(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof d7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.D(i6, ((Integer) list.get(i10)).intValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int iK = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                iK += x6.K(((Integer) list.get(i11)).intValue());
            }
            x6Var.E(iK);
            while (i10 < list.size()) {
                x6Var.E(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        d7 d7Var = (d7) list;
        if (!z7) {
            while (i10 < d7Var.f4137c) {
                x6Var.D(i6, d7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int iK2 = 0;
        for (int i12 = 0; i12 < d7Var.f4137c; i12++) {
            iK2 += x6.K(d7Var.e(i12));
        }
        x6Var.E(iK2);
        while (i10 < d7Var.f4137c) {
            x6Var.E(d7Var.e(i10));
            i10++;
        }
    }

    public static void c(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof k7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.F(i6, ((Long) list.get(i10)).longValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int iS = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                iS += x6.s(((Long) list.get(i11)).longValue());
            }
            x6Var.E(iS);
            while (i10 < list.size()) {
                x6Var.G(((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        k7 k7Var = (k7) list;
        if (!z7) {
            while (i10 < k7Var.f4295c) {
                x6Var.F(i6, k7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int iS2 = 0;
        for (int i12 = 0; i12 < k7Var.f4295c; i12++) {
            iS2 += x6.s(k7Var.e(i12));
        }
        x6Var.E(iS2);
        while (i10 < k7Var.f4295c) {
            x6Var.G(k7Var.e(i10));
            i10++;
        }
    }

    public static boolean d(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int e(List list) {
        int iS;
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d7) {
            d7 d7Var = (d7) list;
            iS = 0;
            while (i6 < size) {
                iS += x6.s(d7Var.e(i6));
                i6++;
            }
        } else {
            iS = 0;
            while (i6 < size) {
                iS += x6.s(((Integer) list.get(i6)).intValue());
                i6++;
            }
        }
        return iS;
    }

    public static int f(int i6, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (x6.K(i6 << 3) + 4) * size;
    }

    public static int g(List list) {
        return list.size() * 4;
    }

    public static int h(int i6, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (x6.K(i6 << 3) + 8) * size;
    }

    public static int i(List list) {
        return list.size() * 8;
    }

    public static int j(List list) {
        int iS;
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d7) {
            d7 d7Var = (d7) list;
            iS = 0;
            while (i6 < size) {
                iS += x6.s(d7Var.e(i6));
                i6++;
            }
        } else {
            iS = 0;
            while (i6 < size) {
                iS += x6.s(((Integer) list.get(i6)).intValue());
                i6++;
            }
        }
        return iS;
    }

    public static int k(List list) {
        int iS;
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k7) {
            k7 k7Var = (k7) list;
            iS = 0;
            while (i6 < size) {
                iS += x6.s(k7Var.e(i6));
                i6++;
            }
        } else {
            iS = 0;
            while (i6 < size) {
                iS += x6.s(((Long) list.get(i6)).longValue());
                i6++;
            }
        }
        return iS;
    }

    public static int l(int i6, Object obj, v7 v7Var) {
        return x6.I((r6) obj, v7Var) + x6.K(i6 << 3);
    }

    public static int m(List list) {
        int iK;
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d7) {
            d7 d7Var = (d7) list;
            iK = 0;
            while (i6 < size) {
                int iE = d7Var.e(i6);
                iK += x6.K((iE >> 31) ^ (iE + iE));
                i6++;
            }
        } else {
            iK = 0;
            while (i6 < size) {
                int iIntValue = ((Integer) list.get(i6)).intValue();
                iK += x6.K((iIntValue >> 31) ^ (iIntValue + iIntValue));
                i6++;
            }
        }
        return iK;
    }

    public static int n(List list) {
        int iS;
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k7) {
            k7 k7Var = (k7) list;
            iS = 0;
            while (i6 < size) {
                long jE = k7Var.e(i6);
                iS += x6.s((jE >> 63) ^ (jE + jE));
                i6++;
            }
        } else {
            iS = 0;
            while (i6 < size) {
                long jLongValue = ((Long) list.get(i6)).longValue();
                iS += x6.s((jLongValue >> 63) ^ (jLongValue + jLongValue));
                i6++;
            }
        }
        return iS;
    }

    public static int o(List list) {
        int iK;
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d7) {
            d7 d7Var = (d7) list;
            iK = 0;
            while (i6 < size) {
                iK += x6.K(d7Var.e(i6));
                i6++;
            }
        } else {
            iK = 0;
            while (i6 < size) {
                iK += x6.K(((Integer) list.get(i6)).intValue());
                i6++;
            }
        }
        return iK;
    }

    public static int p(List list) {
        int iS;
        int size = list.size();
        int i6 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof k7) {
            k7 k7Var = (k7) list;
            iS = 0;
            while (i6 < size) {
                iS += x6.s(k7Var.e(i6));
                i6++;
            }
        } else {
            iS = 0;
            while (i6 < size) {
                iS += x6.s(((Long) list.get(i6)).longValue());
                i6++;
            }
        }
        return iS;
    }

    public static void q(Object obj, Object obj2) {
        c7 c7Var = (c7) obj;
        y7 y7Var = c7Var.zzc;
        y7 y7Var2 = ((c7) obj2).zzc;
        y7 y7Var3 = y7.f4496e;
        if (!y7Var3.equals(y7Var2)) {
            if (y7Var3.equals(y7Var)) {
                y7Var.getClass();
                y7Var2.getClass();
                int[] iArrCopyOf = Arrays.copyOf(y7Var.f4497a, 0);
                System.arraycopy(y7Var2.f4497a, 0, iArrCopyOf, 0, 0);
                Object[] objArrCopyOf = Arrays.copyOf(y7Var.f4498b, 0);
                System.arraycopy(y7Var2.f4498b, 0, objArrCopyOf, 0, 0);
                y7Var = new y7(iArrCopyOf, objArrCopyOf, true);
            } else {
                y7Var.getClass();
                if (!y7Var2.equals(y7Var3)) {
                    if (!y7Var.d) {
                        throw new UnsupportedOperationException();
                    }
                    int[] iArr = y7Var.f4497a;
                    int length = iArr.length;
                    System.arraycopy(y7Var2.f4497a, 0, iArr, 0, 0);
                    System.arraycopy(y7Var2.f4498b, 0, y7Var.f4498b, 0, 0);
                }
            }
        }
        c7Var.zzc = y7Var;
    }

    public static void r(int i6, List list, l7 l7Var, boolean z7) {
        IndexOutOfBoundsException indexOutOfBoundsException;
        int i10;
        IndexOutOfBoundsException indexOutOfBoundsException2;
        int i11;
        if (list == null || list.isEmpty()) {
            return;
        }
        x6 x6Var = (x6) l7Var.f4310b;
        int i12 = 0;
        if (!z7) {
            while (i12 < list.size()) {
                byte bBooleanValue = ((Boolean) list.get(i12)).booleanValue();
                x6Var.E(i6 << 3);
                int i13 = x6Var.f4466g;
                try {
                    i10 = i13 + 1;
                } catch (IndexOutOfBoundsException e5) {
                    indexOutOfBoundsException = e5;
                }
                try {
                    x6Var.f4465e[i13] = bBooleanValue;
                    x6Var.f4466g = i10;
                    i12++;
                } catch (IndexOutOfBoundsException e10) {
                    indexOutOfBoundsException = e10;
                    i13 = i10;
                    throw new y6(i13, x6Var.f, 1, indexOutOfBoundsException);
                }
            }
            return;
        }
        x6Var.C(i6, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < list.size(); i15++) {
            ((Boolean) list.get(i15)).getClass();
            i14++;
        }
        x6Var.E(i14);
        while (i12 < list.size()) {
            byte bBooleanValue2 = ((Boolean) list.get(i12)).booleanValue();
            int i16 = x6Var.f4466g;
            try {
                i11 = i16 + 1;
            } catch (IndexOutOfBoundsException e11) {
                indexOutOfBoundsException2 = e11;
            }
            try {
                x6Var.f4465e[i16] = bBooleanValue2;
                x6Var.f4466g = i11;
                i12++;
            } catch (IndexOutOfBoundsException e12) {
                indexOutOfBoundsException2 = e12;
                i16 = i11;
                throw new y6(i16, x6Var.f, 1, indexOutOfBoundsException2);
            }
        }
    }

    public static void s(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z7) {
            while (i10 < list.size()) {
                x6Var.x(i6, Double.doubleToRawLongBits(((Double) list.get(i10)).doubleValue()));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Double) list.get(i12)).getClass();
            i11 += 8;
        }
        x6Var.E(i11);
        while (i10 < list.size()) {
            x6Var.y(Double.doubleToRawLongBits(((Double) list.get(i10)).doubleValue()));
            i10++;
        }
    }

    public static void t(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof d7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.z(i6, ((Integer) list.get(i10)).intValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int iS = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                iS += x6.s(((Integer) list.get(i11)).intValue());
            }
            x6Var.E(iS);
            while (i10 < list.size()) {
                x6Var.A(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        d7 d7Var = (d7) list;
        if (!z7) {
            while (i10 < d7Var.f4137c) {
                x6Var.z(i6, d7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int iS2 = 0;
        for (int i12 = 0; i12 < d7Var.f4137c; i12++) {
            iS2 += x6.s(d7Var.e(i12));
        }
        x6Var.E(iS2);
        while (i10 < d7Var.f4137c) {
            x6Var.A(d7Var.e(i10));
            i10++;
        }
    }

    public static void u(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof d7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.v(i6, ((Integer) list.get(i10)).intValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Integer) list.get(i12)).getClass();
                i11 += 4;
            }
            x6Var.E(i11);
            while (i10 < list.size()) {
                x6Var.w(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        d7 d7Var = (d7) list;
        if (!z7) {
            while (i10 < d7Var.f4137c) {
                x6Var.v(i6, d7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < d7Var.f4137c; i14++) {
            d7Var.e(i14);
            i13 += 4;
        }
        x6Var.E(i13);
        while (i10 < d7Var.f4137c) {
            x6Var.w(d7Var.e(i10));
            i10++;
        }
    }

    public static void v(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof k7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.x(i6, ((Long) list.get(i10)).longValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Long) list.get(i12)).getClass();
                i11 += 8;
            }
            x6Var.E(i11);
            while (i10 < list.size()) {
                x6Var.y(((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        k7 k7Var = (k7) list;
        if (!z7) {
            while (i10 < k7Var.f4295c) {
                x6Var.x(i6, k7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < k7Var.f4295c; i14++) {
            k7Var.e(i14);
            i13 += 8;
        }
        x6Var.E(i13);
        while (i10 < k7Var.f4295c) {
            x6Var.y(k7Var.e(i10));
            i10++;
        }
    }

    public static void w(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z7) {
            while (i10 < list.size()) {
                x6Var.v(i6, Float.floatToRawIntBits(((Float) list.get(i10)).floatValue()));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            ((Float) list.get(i12)).getClass();
            i11 += 4;
        }
        x6Var.E(i11);
        while (i10 < list.size()) {
            x6Var.w(Float.floatToRawIntBits(((Float) list.get(i10)).floatValue()));
            i10++;
        }
    }

    public static void x(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof d7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.z(i6, ((Integer) list.get(i10)).intValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int iS = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                iS += x6.s(((Integer) list.get(i11)).intValue());
            }
            x6Var.E(iS);
            while (i10 < list.size()) {
                x6Var.A(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        d7 d7Var = (d7) list;
        if (!z7) {
            while (i10 < d7Var.f4137c) {
                x6Var.z(i6, d7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int iS2 = 0;
        for (int i12 = 0; i12 < d7Var.f4137c; i12++) {
            iS2 += x6.s(d7Var.e(i12));
        }
        x6Var.E(iS2);
        while (i10 < d7Var.f4137c) {
            x6Var.A(d7Var.e(i10));
            i10++;
        }
    }

    public static void y(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof k7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.F(i6, ((Long) list.get(i10)).longValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int iS = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                iS += x6.s(((Long) list.get(i11)).longValue());
            }
            x6Var.E(iS);
            while (i10 < list.size()) {
                x6Var.G(((Long) list.get(i10)).longValue());
                i10++;
            }
            return;
        }
        k7 k7Var = (k7) list;
        if (!z7) {
            while (i10 < k7Var.f4295c) {
                x6Var.F(i6, k7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int iS2 = 0;
        for (int i12 = 0; i12 < k7Var.f4295c; i12++) {
            iS2 += x6.s(k7Var.e(i12));
        }
        x6Var.E(iS2);
        while (i10 < k7Var.f4295c) {
            x6Var.G(k7Var.e(i10));
            i10++;
        }
    }

    public static void z(int i6, List list, l7 l7Var, boolean z7) {
        if (list == null || list.isEmpty()) {
            return;
        }
        l7Var.getClass();
        boolean z10 = list instanceof d7;
        x6 x6Var = (x6) l7Var.f4310b;
        int i10 = 0;
        if (!z10) {
            if (!z7) {
                while (i10 < list.size()) {
                    x6Var.v(i6, ((Integer) list.get(i10)).intValue());
                    i10++;
                }
                return;
            }
            x6Var.C(i6, 2);
            int i11 = 0;
            for (int i12 = 0; i12 < list.size(); i12++) {
                ((Integer) list.get(i12)).getClass();
                i11 += 4;
            }
            x6Var.E(i11);
            while (i10 < list.size()) {
                x6Var.w(((Integer) list.get(i10)).intValue());
                i10++;
            }
            return;
        }
        d7 d7Var = (d7) list;
        if (!z7) {
            while (i10 < d7Var.f4137c) {
                x6Var.v(i6, d7Var.e(i10));
                i10++;
            }
            return;
        }
        x6Var.C(i6, 2);
        int i13 = 0;
        for (int i14 = 0; i14 < d7Var.f4137c; i14++) {
            d7Var.e(i14);
            i13 += 4;
        }
        x6Var.E(i13);
        while (i10 < d7Var.f4137c) {
            x6Var.w(d7Var.e(i10));
            i10++;
        }
    }
}
