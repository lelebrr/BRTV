package com.google.android.gms.internal.cast;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class w6 implements Iterable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final w6 f4451c = new w6(h7.f4215b);

    /* renamed from: a, reason: collision with root package name */
    public int f4452a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f4453b;

    static {
        int i6 = t6.f4420a;
    }

    public w6(byte[] bArr) {
        bArr.getClass();
        this.f4453b = bArr;
    }

    public static void f(int i6) {
        if (((i6 - 47) | 47) < 0) {
            throw new IndexOutOfBoundsException(a.e.n(i6, "End index: 47 >= "));
        }
    }

    public byte c(int i6) {
        return this.f4453b[i6];
    }

    public byte d(int i6) {
        return this.f4453b[i6];
    }

    public int e() {
        return this.f4453b.length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w6) || e() != ((w6) obj).e()) {
            return false;
        }
        if (e() == 0) {
            return true;
        }
        if (!(obj instanceof w6)) {
            return obj.equals(this);
        }
        w6 w6Var = (w6) obj;
        int i6 = this.f4452a;
        int i10 = w6Var.f4452a;
        if (i6 != 0 && i10 != 0 && i6 != i10) {
            return false;
        }
        int iE = e();
        if (iE > w6Var.e()) {
            throw new IllegalArgumentException("Length too large: " + iE + e());
        }
        if (iE > w6Var.e()) {
            throw new IllegalArgumentException(a.e.m(iE, w6Var.e(), "Ran off end of other: 0, ", ", "));
        }
        int i11 = 0;
        int i12 = 0;
        while (i11 < iE) {
            if (this.f4453b[i11] != w6Var.f4453b[i12]) {
                return false;
            }
            i11++;
            i12++;
        }
        return true;
    }

    public final int hashCode() {
        int i6 = this.f4452a;
        if (i6 != 0) {
            return i6;
        }
        int iE = e();
        Charset charset = h7.f4214a;
        int i10 = iE;
        for (int i11 = 0; i11 < iE; i11++) {
            i10 = (i10 * 31) + this.f4453b[i11];
        }
        int i12 = i10 != 0 ? i10 : 1;
        this.f4452a = i12;
        return i12;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new u6(this);
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int iE = e();
        if (e() <= 50) {
            strConcat = z0.d(this);
        } else {
            f(e());
            strConcat = z0.d(new v6(this.f4453b)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(iE);
        sb.append(" contents=\"");
        return a.e.t(sb, strConcat, "\">");
    }
}
