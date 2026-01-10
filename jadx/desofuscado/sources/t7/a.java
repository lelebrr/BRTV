package t7;

import a.e;
import ea.q;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class a implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final Reader f10155a;

    /* renamed from: i, reason: collision with root package name */
    public long f10161i;

    /* renamed from: j, reason: collision with root package name */
    public int f10162j;

    /* renamed from: k, reason: collision with root package name */
    public String f10163k;

    /* renamed from: l, reason: collision with root package name */
    public int[] f10164l;

    /* renamed from: n, reason: collision with root package name */
    public String[] f10166n;

    /* renamed from: o, reason: collision with root package name */
    public int[] f10167o;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10156b = false;

    /* renamed from: c, reason: collision with root package name */
    public final char[] f10157c = new char[1024];
    public int d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f10158e = 0;
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f10159g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f10160h = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f10165m = 1;

    static {
        q.b.f8931b = new q.b(5);
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.f10164l = iArr;
        iArr[0] = 6;
        this.f10166n = new String[32];
        this.f10167o = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.f10155a = reader;
    }

    public final void A(String str) throws c {
        StringBuilder sbM = q.m(str);
        sbM.append(j());
        throw new c(sbM.toString());
    }

    public final void a() throws IOException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 3) {
            v(1);
            this.f10167o[this.f10165m - 1] = 0;
            this.f10160h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + q.r(u()) + j());
        }
    }

    public final void b() throws IOException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 1) {
            v(3);
            this.f10160h = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + q.r(u()) + j());
        }
    }

    public final void c() throws c {
        if (this.f10156b) {
            return;
        }
        A("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f10160h = 0;
        this.f10164l[0] = 8;
        this.f10165m = 1;
        this.f10155a.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:167:0x0211, code lost:
    
        if (i(r1) != false) goto L121;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0179 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0279 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int d() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 813
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t7.a.d():int");
    }

    public final void e() throws IOException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + q.r(u()) + j());
        }
        int i6 = this.f10165m;
        this.f10165m = i6 - 1;
        int[] iArr = this.f10167o;
        int i10 = i6 - 2;
        iArr[i10] = iArr[i10] + 1;
        this.f10160h = 0;
    }

    public final void f() throws IOException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + q.r(u()) + j());
        }
        int i6 = this.f10165m;
        int i10 = i6 - 1;
        this.f10165m = i10;
        this.f10166n[i10] = null;
        int[] iArr = this.f10167o;
        int i11 = i6 - 2;
        iArr[i11] = iArr[i11] + 1;
        this.f10160h = 0;
    }

    public final boolean g(int i6) throws IOException {
        int i10;
        int i11;
        int i12 = this.f10159g;
        int i13 = this.d;
        this.f10159g = i12 - i13;
        int i14 = this.f10158e;
        char[] cArr = this.f10157c;
        if (i14 != i13) {
            int i15 = i14 - i13;
            this.f10158e = i15;
            System.arraycopy(cArr, i13, cArr, 0, i15);
        } else {
            this.f10158e = 0;
        }
        this.d = 0;
        do {
            int i16 = this.f10158e;
            int i17 = this.f10155a.read(cArr, i16, cArr.length - i16);
            if (i17 == -1) {
                return false;
            }
            i10 = this.f10158e + i17;
            this.f10158e = i10;
            if (this.f == 0 && (i11 = this.f10159g) == 0 && i10 > 0 && cArr[0] == 65279) {
                this.d++;
                this.f10159g = i11 + 1;
                i6++;
            }
        } while (i10 < i6);
        return true;
    }

    public final boolean h() throws IOException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        return (iD == 2 || iD == 4) ? false : true;
    }

    public final boolean i(char c5) throws c {
        if (c5 == '\t' || c5 == '\n' || c5 == '\f' || c5 == '\r' || c5 == ' ') {
            return false;
        }
        if (c5 != '#') {
            if (c5 == ',') {
                return false;
            }
            if (c5 != '/' && c5 != '=') {
                if (c5 == '{' || c5 == '}' || c5 == ':') {
                    return false;
                }
                if (c5 != ';') {
                    switch (c5) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        c();
        return false;
    }

    public final String j() {
        StringBuilder sbV = e.v(" at line ", this.f + 1, " column ", (this.d - this.f10159g) + 1, " path ");
        StringBuilder sb = new StringBuilder("$");
        int i6 = this.f10165m;
        for (int i10 = 0; i10 < i6; i10++) {
            int i11 = this.f10164l[i10];
            if (i11 == 1 || i11 == 2) {
                sb.append('[');
                sb.append(this.f10167o[i10]);
                sb.append(']');
            } else if (i11 == 3 || i11 == 4 || i11 == 5) {
                sb.append('.');
                String str = this.f10166n[i10];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        sbV.append(sb.toString());
        return sbV.toString();
    }

    public final boolean k() throws IOException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 5) {
            this.f10160h = 0;
            int[] iArr = this.f10167o;
            int i6 = this.f10165m - 1;
            iArr[i6] = iArr[i6] + 1;
            return true;
        }
        if (iD != 6) {
            throw new IllegalStateException("Expected a boolean but was " + q.r(u()) + j());
        }
        this.f10160h = 0;
        int[] iArr2 = this.f10167o;
        int i10 = this.f10165m - 1;
        iArr2[i10] = iArr2[i10] + 1;
        return false;
    }

    public final double l() throws IOException, NumberFormatException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 15) {
            this.f10160h = 0;
            int[] iArr = this.f10167o;
            int i6 = this.f10165m - 1;
            iArr[i6] = iArr[i6] + 1;
            return this.f10161i;
        }
        if (iD == 16) {
            this.f10163k = new String(this.f10157c, this.d, this.f10162j);
            this.d += this.f10162j;
        } else if (iD == 8 || iD == 9) {
            this.f10163k = r(iD == 8 ? '\'' : '\"');
        } else if (iD == 10) {
            this.f10163k = t();
        } else if (iD != 11) {
            throw new IllegalStateException("Expected a double but was " + q.r(u()) + j());
        }
        this.f10160h = 11;
        double d = Double.parseDouble(this.f10163k);
        if (!this.f10156b && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new c("JSON forbids NaN and infinities: " + d + j());
        }
        this.f10163k = null;
        this.f10160h = 0;
        int[] iArr2 = this.f10167o;
        int i10 = this.f10165m - 1;
        iArr2[i10] = iArr2[i10] + 1;
        return d;
    }

    public final int m() throws IOException, NumberFormatException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 15) {
            long j10 = this.f10161i;
            int i6 = (int) j10;
            if (j10 != i6) {
                throw new NumberFormatException("Expected an int but was " + this.f10161i + j());
            }
            this.f10160h = 0;
            int[] iArr = this.f10167o;
            int i10 = this.f10165m - 1;
            iArr[i10] = iArr[i10] + 1;
            return i6;
        }
        if (iD == 16) {
            this.f10163k = new String(this.f10157c, this.d, this.f10162j);
            this.d += this.f10162j;
        } else {
            if (iD != 8 && iD != 9 && iD != 10) {
                throw new IllegalStateException("Expected an int but was " + q.r(u()) + j());
            }
            if (iD == 10) {
                this.f10163k = t();
            } else {
                this.f10163k = r(iD == 8 ? '\'' : '\"');
            }
            try {
                int i11 = Integer.parseInt(this.f10163k);
                this.f10160h = 0;
                int[] iArr2 = this.f10167o;
                int i12 = this.f10165m - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return i11;
            } catch (NumberFormatException unused) {
            }
        }
        this.f10160h = 11;
        double d = Double.parseDouble(this.f10163k);
        int i13 = (int) d;
        if (i13 != d) {
            throw new NumberFormatException("Expected an int but was " + this.f10163k + j());
        }
        this.f10163k = null;
        this.f10160h = 0;
        int[] iArr3 = this.f10167o;
        int i14 = this.f10165m - 1;
        iArr3[i14] = iArr3[i14] + 1;
        return i13;
    }

    public final long n() throws IOException, NumberFormatException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 15) {
            this.f10160h = 0;
            int[] iArr = this.f10167o;
            int i6 = this.f10165m - 1;
            iArr[i6] = iArr[i6] + 1;
            return this.f10161i;
        }
        if (iD == 16) {
            this.f10163k = new String(this.f10157c, this.d, this.f10162j);
            this.d += this.f10162j;
        } else {
            if (iD != 8 && iD != 9 && iD != 10) {
                throw new IllegalStateException("Expected a long but was " + q.r(u()) + j());
            }
            if (iD == 10) {
                this.f10163k = t();
            } else {
                this.f10163k = r(iD == 8 ? '\'' : '\"');
            }
            try {
                long j10 = Long.parseLong(this.f10163k);
                this.f10160h = 0;
                int[] iArr2 = this.f10167o;
                int i10 = this.f10165m - 1;
                iArr2[i10] = iArr2[i10] + 1;
                return j10;
            } catch (NumberFormatException unused) {
            }
        }
        this.f10160h = 11;
        double d = Double.parseDouble(this.f10163k);
        long j11 = (long) d;
        if (j11 != d) {
            throw new NumberFormatException("Expected a long but was " + this.f10163k + j());
        }
        this.f10163k = null;
        this.f10160h = 0;
        int[] iArr3 = this.f10167o;
        int i11 = this.f10165m - 1;
        iArr3[i11] = iArr3[i11] + 1;
        return j11;
    }

    public final String o() throws IOException {
        String strR;
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 14) {
            strR = t();
        } else if (iD == 12) {
            strR = r('\'');
        } else {
            if (iD != 13) {
                throw new IllegalStateException("Expected a name but was " + q.r(u()) + j());
            }
            strR = r('\"');
        }
        this.f10160h = 0;
        this.f10166n[this.f10165m - 1] = strR;
        return strR;
    }

    public final int p(boolean z7) throws IOException {
        int i6 = this.d;
        int i10 = this.f10158e;
        while (true) {
            if (i6 == i10) {
                this.d = i6;
                if (!g(1)) {
                    if (!z7) {
                        return -1;
                    }
                    throw new EOFException("End of input" + j());
                }
                i6 = this.d;
                i10 = this.f10158e;
            }
            int i11 = i6 + 1;
            char[] cArr = this.f10157c;
            char c5 = cArr[i6];
            if (c5 == '\n') {
                this.f++;
                this.f10159g = i11;
            } else if (c5 != ' ' && c5 != '\r' && c5 != '\t') {
                if (c5 == '/') {
                    this.d = i11;
                    if (i11 == i10) {
                        this.d = i6;
                        boolean zG = g(2);
                        this.d++;
                        if (!zG) {
                            return c5;
                        }
                    }
                    c();
                    int i12 = this.d;
                    char c8 = cArr[i12];
                    if (c8 == '*') {
                        this.d = i12 + 1;
                        while (true) {
                            if (this.d + 2 > this.f10158e && !g(2)) {
                                A("Unterminated comment");
                                throw null;
                            }
                            int i13 = this.d;
                            if (cArr[i13] != '\n') {
                                for (int i14 = 0; i14 < 2; i14++) {
                                    if (cArr[this.d + i14] != "*/".charAt(i14)) {
                                        break;
                                    }
                                }
                                i6 = this.d + 2;
                                i10 = this.f10158e;
                                break;
                            }
                            this.f++;
                            this.f10159g = i13 + 1;
                            this.d++;
                        }
                    } else {
                        if (c8 != '/') {
                            return c5;
                        }
                        this.d = i12 + 1;
                        y();
                        i6 = this.d;
                        i10 = this.f10158e;
                    }
                } else {
                    if (c5 != '#') {
                        this.d = i11;
                        return c5;
                    }
                    this.d = i11;
                    c();
                    y();
                    i6 = this.d;
                    i10 = this.f10158e;
                }
            }
            i6 = i11;
        }
    }

    public final void q() throws IOException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD != 7) {
            throw new IllegalStateException("Expected null but was " + q.r(u()) + j());
        }
        this.f10160h = 0;
        int[] iArr = this.f10167o;
        int i6 = this.f10165m - 1;
        iArr[i6] = iArr[i6] + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
    
        r10.d = r8;
        r8 = r8 - r3;
        r2 = r8 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0032, code lost:
    
        if (r1 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0034, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max(r8 * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
    
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005d, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006b, code lost:
    
        r1.append(r5, r3, r2 - r3);
        r10.d = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String r(char r11) throws t7.c {
        /*
            r10 = this;
            r0 = 0
            r1 = r0
        L2:
            int r2 = r10.d
            int r3 = r10.f10158e
        L6:
            r4 = r3
            r3 = r2
        L8:
            char[] r5 = r10.f10157c
            r6 = 1
            r7 = 16
            if (r2 >= r4) goto L5b
            int r8 = r2 + 1
            char r2 = r5[r2]
            if (r2 != r11) goto L29
            r10.d = r8
            int r8 = r8 - r3
            int r8 = r8 - r6
            if (r1 != 0) goto L21
            java.lang.String r11 = new java.lang.String
            r11.<init>(r5, r3, r8)
            return r11
        L21:
            r1.append(r5, r3, r8)
            java.lang.String r11 = r1.toString()
            return r11
        L29:
            r9 = 92
            if (r2 != r9) goto L4e
            r10.d = r8
            int r8 = r8 - r3
            int r2 = r8 + (-1)
            if (r1 != 0) goto L3f
            int r8 = r8 * 2
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            int r4 = java.lang.Math.max(r8, r7)
            r1.<init>(r4)
        L3f:
            r1.append(r5, r3, r2)
            char r2 = r10.w()
            r1.append(r2)
            int r2 = r10.d
            int r3 = r10.f10158e
            goto L6
        L4e:
            r5 = 10
            if (r2 != r5) goto L59
            int r2 = r10.f
            int r2 = r2 + r6
            r10.f = r2
            r10.f10159g = r8
        L59:
            r2 = r8
            goto L8
        L5b:
            if (r1 != 0) goto L6b
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r7)
            r4.<init>(r1)
            r1 = r4
        L6b:
            int r4 = r2 - r3
            r1.append(r5, r3, r4)
            r10.d = r2
            boolean r2 = r10.g(r6)
            if (r2 == 0) goto L79
            goto L2
        L79:
            java.lang.String r11 = "Unterminated string"
            r10.A(r11)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: t7.a.r(char):java.lang.String");
    }

    public final String s() throws IOException {
        String str;
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 10) {
            str = t();
        } else if (iD == 8) {
            str = r('\'');
        } else if (iD == 9) {
            str = r('\"');
        } else if (iD == 11) {
            str = this.f10163k;
            this.f10163k = null;
        } else if (iD == 15) {
            str = Long.toString(this.f10161i);
        } else {
            if (iD != 16) {
                throw new IllegalStateException("Expected a string but was " + q.r(u()) + j());
            }
            str = new String(this.f10157c, this.d, this.f10162j);
            this.d += this.f10162j;
        }
        this.f10160h = 0;
        int[] iArr = this.f10167o;
        int i6 = this.f10165m - 1;
        iArr[i6] = iArr[i6] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        c();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String t() throws t7.c {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r7.d
            int r4 = r3 + r2
            int r5 = r7.f10158e
            char[] r6 = r7.f10157c
            if (r4 >= r5) goto L4e
            int r3 = r3 + r2
            char r3 = r6[r3]
            r4 = 9
            if (r3 == r4) goto L5a
            r4 = 10
            if (r3 == r4) goto L5a
            r4 = 12
            if (r3 == r4) goto L5a
            r4 = 13
            if (r3 == r4) goto L5a
            r4 = 32
            if (r3 == r4) goto L5a
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5a
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5a
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5a
            r4 = 58
            if (r3 == r4) goto L5a
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5a;
                case 92: goto L4a;
                case 93: goto L5a;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r7.c()
            goto L5a
        L4e:
            int r3 = r6.length
            if (r2 >= r3) goto L5c
            int r3 = r2 + 1
            boolean r3 = r7.g(r3)
            if (r3 == 0) goto L5a
            goto L3
        L5a:
            r1 = r2
            goto L7a
        L5c:
            if (r0 != 0) goto L69
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r0.<init>(r3)
        L69:
            int r3 = r7.d
            r0.append(r6, r3, r2)
            int r3 = r7.d
            int r3 = r3 + r2
            r7.d = r3
            r2 = 1
            boolean r2 = r7.g(r2)
            if (r2 != 0) goto L2
        L7a:
            if (r0 != 0) goto L84
            java.lang.String r0 = new java.lang.String
            int r2 = r7.d
            r0.<init>(r6, r2, r1)
            goto L8d
        L84:
            int r2 = r7.d
            r0.append(r6, r2, r1)
            java.lang.String r0 = r0.toString()
        L8d:
            int r2 = r7.d
            int r2 = r2 + r1
            r7.d = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: t7.a.t():java.lang.String");
    }

    public final String toString() {
        return a.class.getSimpleName() + j();
    }

    public final int u() throws IOException {
        int iD = this.f10160h;
        if (iD == 0) {
            iD = d();
        }
        switch (iD) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final void v(int i6) {
        int i10 = this.f10165m;
        int[] iArr = this.f10164l;
        if (i10 == iArr.length) {
            int i11 = i10 * 2;
            this.f10164l = Arrays.copyOf(iArr, i11);
            this.f10167o = Arrays.copyOf(this.f10167o, i11);
            this.f10166n = (String[]) Arrays.copyOf(this.f10166n, i11);
        }
        int[] iArr2 = this.f10164l;
        int i12 = this.f10165m;
        this.f10165m = i12 + 1;
        iArr2[i12] = i6;
    }

    public final char w() throws c {
        int i6;
        if (this.d == this.f10158e && !g(1)) {
            A("Unterminated escape sequence");
            throw null;
        }
        int i10 = this.d;
        int i11 = i10 + 1;
        this.d = i11;
        char[] cArr = this.f10157c;
        char c5 = cArr[i10];
        if (c5 == '\n') {
            this.f++;
            this.f10159g = i11;
        } else if (c5 != '\"' && c5 != '\'' && c5 != '/' && c5 != '\\') {
            if (c5 == 'b') {
                return '\b';
            }
            if (c5 == 'f') {
                return '\f';
            }
            if (c5 == 'n') {
                return '\n';
            }
            if (c5 == 'r') {
                return '\r';
            }
            if (c5 == 't') {
                return '\t';
            }
            if (c5 != 'u') {
                A("Invalid escape sequence");
                throw null;
            }
            if (i10 + 5 > this.f10158e && !g(4)) {
                A("Unterminated escape sequence");
                throw null;
            }
            int i12 = this.d;
            int i13 = i12 + 4;
            char c8 = 0;
            while (i12 < i13) {
                char c10 = cArr[i12];
                char c11 = (char) (c8 << 4);
                if (c10 >= '0' && c10 <= '9') {
                    i6 = c10 - '0';
                } else if (c10 >= 'a' && c10 <= 'f') {
                    i6 = c10 - 'W';
                } else {
                    if (c10 < 'A' || c10 > 'F') {
                        throw new NumberFormatException("\\u".concat(new String(cArr, this.d, 4)));
                    }
                    i6 = c10 - '7';
                }
                c8 = (char) (i6 + c11);
                i12++;
            }
            this.d += 4;
            return c8;
        }
        return c5;
    }

    public final void x(char c5) throws c {
        do {
            int i6 = this.d;
            int i10 = this.f10158e;
            while (i6 < i10) {
                int i11 = i6 + 1;
                char c8 = this.f10157c[i6];
                if (c8 == c5) {
                    this.d = i11;
                    return;
                }
                if (c8 == '\\') {
                    this.d = i11;
                    w();
                    i6 = this.d;
                    i10 = this.f10158e;
                } else {
                    if (c8 == '\n') {
                        this.f++;
                        this.f10159g = i11;
                    }
                    i6 = i11;
                }
            }
            this.d = i6;
        } while (g(1));
        A("Unterminated string");
        throw null;
    }

    public final void y() {
        char c5;
        do {
            if (this.d >= this.f10158e && !g(1)) {
                return;
            }
            int i6 = this.d;
            int i10 = i6 + 1;
            this.d = i10;
            c5 = this.f10157c[i6];
            if (c5 == '\n') {
                this.f++;
                this.f10159g = i10;
                return;
            }
        } while (c5 != '\r');
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a1, code lost:
    
        c();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:61:0x009b. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void z() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t7.a.z():void");
    }
}
