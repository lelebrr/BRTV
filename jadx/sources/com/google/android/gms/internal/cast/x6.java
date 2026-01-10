package com.google.android.gms.internal.cast;

import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x6 extends z0 {

    /* renamed from: h, reason: collision with root package name */
    public static final Logger f4463h = Logger.getLogger(x6.class.getName());

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f4464i = d8.f4141e;
    public l7 d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f4465e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public int f4466g;

    public x6(byte[] bArr, int i6) {
        super(12);
        int length = bArr.length;
        if (((length - i6) | i6) < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(a.e.m(length, i6, "Array range is invalid. Buffer.length=", ", offset=0, length="));
        }
        this.f4465e = bArr;
        this.f4466g = 0;
        this.f = i6;
    }

    public static int H(int i6, r6 r6Var, v7 v7Var) {
        int iK = K(i6 << 3);
        return r6Var.a(v7Var) + iK + iK;
    }

    public static int I(r6 r6Var, v7 v7Var) {
        int iA = r6Var.a(v7Var);
        return K(iA) + iA;
    }

    public static int J(String str) {
        int length;
        try {
            length = f8.b(str);
        } catch (e8 unused) {
            length = str.getBytes(h7.f4214a).length;
        }
        return K(length) + length;
    }

    public static int K(int i6) {
        return (352 - (Integer.numberOfLeadingZeros(i6) * 9)) >>> 6;
    }

    public static int s(long j10) {
        return (640 - (Long.numberOfLeadingZeros(j10) * 9)) >>> 6;
    }

    public final void A(int i6) throws y6 {
        if (i6 >= 0) {
            E(i6);
        } else {
            G(i6);
        }
    }

    public final void B(int i6, String str) throws y6 {
        E((i6 << 3) | 2);
        int i10 = this.f4466g;
        try {
            int iK = K(str.length() * 3);
            int iK2 = K(str.length());
            byte[] bArr = this.f4465e;
            int i11 = this.f;
            if (iK2 == iK) {
                int i12 = i10 + iK2;
                this.f4466g = i12;
                int iA = f8.a(str, bArr, i12, i11 - i12);
                this.f4466g = i10;
                E((iA - i10) - iK2);
                this.f4466g = iA;
            } else {
                E(f8.b(str));
                int i13 = this.f4466g;
                this.f4466g = f8.a(str, bArr, i13, i11 - i13);
            }
        } catch (e8 e5) {
            this.f4466g = i10;
            f4463h.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e5);
            byte[] bytes = str.getBytes(h7.f4214a);
            try {
                int length = bytes.length;
                E(length);
                t(bytes, length);
            } catch (IndexOutOfBoundsException e10) {
                throw new y6(e10);
            }
        } catch (IndexOutOfBoundsException e11) {
            throw new y6(e11);
        }
    }

    public final void C(int i6, int i10) throws y6 {
        E((i6 << 3) | i10);
    }

    public final void D(int i6, int i10) throws y6 {
        E(i6 << 3);
        E(i10);
    }

    public final void E(int i6) throws y6 {
        int i10;
        int i11 = this.f4466g;
        while (true) {
            int i12 = i6 & (-128);
            byte[] bArr = this.f4465e;
            if (i12 == 0) {
                i10 = i11 + 1;
                bArr[i11] = (byte) i6;
                this.f4466g = i10;
                return;
            } else {
                i10 = i11 + 1;
                try {
                    bArr[i11] = (byte) (i6 | 128);
                    i6 >>>= 7;
                    i11 = i10;
                } catch (IndexOutOfBoundsException e5) {
                    throw new y6(i10, this.f, 1, e5);
                }
            }
            throw new y6(i10, this.f, 1, e5);
        }
    }

    public final void F(int i6, long j10) throws y6 {
        E(i6 << 3);
        G(j10);
    }

    public final void G(long j10) throws y6 {
        int i6;
        int i10 = this.f4466g;
        byte[] bArr = this.f4465e;
        boolean z7 = f4464i;
        int i11 = this.f;
        if (!z7 || i11 - i10 < 10) {
            long j11 = j10;
            while ((j11 & (-128)) != 0) {
                i6 = i10 + 1;
                try {
                    bArr[i10] = (byte) (((int) j11) | 128);
                    j11 >>>= 7;
                    i10 = i6;
                } catch (IndexOutOfBoundsException e5) {
                    throw new y6(i6, i11, 1, e5);
                }
            }
            i6 = i10 + 1;
            bArr[i10] = (byte) j11;
        } else {
            long j12 = j10;
            while ((j12 & (-128)) != 0) {
                d8.f4140c.d(bArr, d8.f + i10, (byte) (((int) j12) | 128));
                j12 >>>= 7;
                i10++;
            }
            i6 = i10 + 1;
            d8.f4140c.d(bArr, d8.f + i10, (byte) j12);
        }
        this.f4466g = i6;
    }

    public final void t(byte[] bArr, int i6) throws y6 {
        try {
            System.arraycopy(bArr, 0, this.f4465e, this.f4466g, i6);
            this.f4466g += i6;
        } catch (IndexOutOfBoundsException e5) {
            throw new y6(this.f4466g, this.f, i6, e5);
        }
    }

    public final void u(int i6, w6 w6Var) throws y6 {
        E((i6 << 3) | 2);
        E(w6Var.e());
        t(w6Var.f4453b, w6Var.e());
    }

    public final void v(int i6, int i10) throws y6 {
        E((i6 << 3) | 5);
        w(i10);
    }

    public final void w(int i6) throws y6 {
        int i10 = this.f4466g;
        try {
            byte[] bArr = this.f4465e;
            bArr[i10] = (byte) i6;
            bArr[i10 + 1] = (byte) (i6 >> 8);
            bArr[i10 + 2] = (byte) (i6 >> 16);
            bArr[i10 + 3] = (byte) (i6 >> 24);
            this.f4466g = i10 + 4;
        } catch (IndexOutOfBoundsException e5) {
            throw new y6(i10, this.f, 4, e5);
        }
    }

    public final void x(int i6, long j10) throws y6 {
        E((i6 << 3) | 1);
        y(j10);
    }

    public final void y(long j10) throws y6 {
        int i6 = this.f4466g;
        try {
            byte[] bArr = this.f4465e;
            bArr[i6] = (byte) j10;
            bArr[i6 + 1] = (byte) (j10 >> 8);
            bArr[i6 + 2] = (byte) (j10 >> 16);
            bArr[i6 + 3] = (byte) (j10 >> 24);
            bArr[i6 + 4] = (byte) (j10 >> 32);
            bArr[i6 + 5] = (byte) (j10 >> 40);
            bArr[i6 + 6] = (byte) (j10 >> 48);
            bArr[i6 + 7] = (byte) (j10 >> 56);
            this.f4466g = i6 + 8;
        } catch (IndexOutOfBoundsException e5) {
            throw new y6(i6, this.f, 8, e5);
        }
    }

    public final void z(int i6, int i10) throws y6 {
        E(i6 << 3);
        A(i10);
    }
}
