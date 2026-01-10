package v7;

import java.io.IOException;
import java.net.IDN;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import q1.p1;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f extends a {

    /* renamed from: e, reason: collision with root package name */
    public final long f10740e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final String f10741g;

    /* renamed from: h, reason: collision with root package name */
    public final b f10742h;

    /* renamed from: i, reason: collision with root package name */
    public final byte[] f10743i;

    /* renamed from: j, reason: collision with root package name */
    public final int f10744j;

    /* renamed from: k, reason: collision with root package name */
    public final int f10745k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f10746l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f10747m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f10748n;

    public f(String str, int i6, b bVar, byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            throw new IOException("response data is empty");
        }
        this.f10741g = str;
        this.f = i6;
        this.f10742h = bVar;
        this.f10743i = bArr;
        this.f10740e = new Date().getTime() / 1000;
        int i10 = 12;
        if (bArr.length < 12) {
            throw new IOException("response data too small");
        }
        short sC = c(0);
        this.f10725a = sC;
        if (sC != bVar.f10725a) {
            throw new IOException("question id error");
        }
        int iD = d(2);
        if ((d(2) & 128) == 0) {
            throw new IOException("not a response data");
        }
        this.f10726b = (iD >> 3) & 7;
        this.f10744j = (iD >> 2) & 1;
        this.f10727c = iD & 1;
        int iD2 = d(3);
        this.d = (iD2 >> 7) & 1;
        this.f10745k = iD2 & 15;
        for (int iC = c(4); iC > 0; iC--) {
            p1 p1VarA = a(i10);
            if (p1VarA == null) {
                throw new IOException("read Question error");
            }
            i10 += p1VarA.f9107a + 4;
        }
        e eVar = new e("answer", c(6), i10);
        b(eVar);
        this.f10746l = eVar.f10739e;
        int i11 = i10 + eVar.d;
        e eVar2 = new e("authority", c(8), i11);
        b(eVar2);
        this.f10747m = eVar2.f10739e;
        e eVar3 = new e("additional", c(10), i11 + eVar2.d);
        b(eVar3);
        this.f10748n = eVar3.f10739e;
    }

    public final p1 a(int i6) throws IOException {
        StringBuilder sb = new StringBuilder();
        p1 p1Var = new p1();
        int i10 = 128;
        int iD = i6;
        do {
            int iD2 = d(iD);
            int i11 = iD2 & 192;
            if (i11 == 192) {
                if (p1Var.f9107a < 1) {
                    p1Var.f9107a = (iD + 2) - i6;
                }
                iD = d(iD + 1) | ((iD2 & 63) << 8);
            } else {
                if (i11 > 0) {
                    return null;
                }
                iD++;
                if (iD2 > 0) {
                    if (sb.length() > 0) {
                        sb.append(".");
                    }
                    int i12 = iD + iD2;
                    sb.append(IDN.toUnicode(new String(Arrays.copyOfRange(this.f10743i, iD, i12))));
                    iD = i12;
                }
            }
            if (iD2 <= 0) {
                break;
            }
            i10--;
        } while (i10 > 0);
        p1Var.f9108b = sb.toString();
        if (p1Var.f9107a < 1) {
            p1Var.f9107a = iD - i6;
        }
        return p1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(v7.e r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 271
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v7.f.b(v7.e):void");
    }

    public final short c(int i6) throws IOException {
        int i10 = i6 + 1;
        byte[] bArr = this.f10743i;
        if (i10 < bArr.length) {
            return (short) (((bArr[i6] & 255) << 8) + (bArr[i10] & 255));
        }
        throw new IOException("read response data out of range");
    }

    public final int d(int i6) throws IOException {
        byte[] bArr = this.f10743i;
        if (i6 < bArr.length) {
            return bArr[i6] & 255;
        }
        throw new IOException("read response data out of range");
    }

    public final String toString() {
        return String.format(Locale.getDefault(), "{messageId:%d, rd:%d, ra:%d, aa:%d, rCode:%d, server:%s, request:%s, answerArray:%s, authorityArray:%s, additionalArray:%s}", Short.valueOf(this.f10725a), Integer.valueOf(this.f10727c), Integer.valueOf(this.d), Integer.valueOf(this.f10744j), Integer.valueOf(this.f10745k), this.f10741g, this.f10742h, this.f10746l, this.f10747m, this.f10748n);
    }
}
