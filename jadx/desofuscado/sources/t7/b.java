package t7;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class b implements Closeable, Flushable {

    /* renamed from: i, reason: collision with root package name */
    public static final String[] f10168i = new String[128];

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f10169j;

    /* renamed from: a, reason: collision with root package name */
    public final Writer f10170a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f10171b;

    /* renamed from: c, reason: collision with root package name */
    public int f10172c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10173e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public String f10174g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f10175h;

    static {
        for (int i6 = 0; i6 <= 31; i6++) {
            f10168i[i6] = String.format("\\u%04x", Integer.valueOf(i6));
        }
        String[] strArr = f10168i;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f10169j = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public b(Writer writer) {
        int[] iArr = new int[32];
        this.f10171b = iArr;
        this.f10172c = 0;
        if (iArr.length == 0) {
            this.f10171b = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.f10171b;
        int i6 = this.f10172c;
        this.f10172c = i6 + 1;
        iArr2[i6] = 6;
        this.d = ":";
        this.f10175h = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.f10170a = writer;
    }

    public final void a() throws IOException {
        int iJ = j();
        if (iJ == 1) {
            this.f10171b[this.f10172c - 1] = 2;
            h();
            return;
        }
        Writer writer = this.f10170a;
        if (iJ == 2) {
            writer.append(',');
            h();
        } else {
            if (iJ == 4) {
                writer.append((CharSequence) this.d);
                this.f10171b[this.f10172c - 1] = 5;
                return;
            }
            if (iJ != 6) {
                if (iJ != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f10173e) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            this.f10171b[this.f10172c - 1] = 7;
        }
    }

    public void b() throws IOException {
        p();
        a();
        int i6 = this.f10172c;
        int[] iArr = this.f10171b;
        if (i6 == iArr.length) {
            this.f10171b = Arrays.copyOf(iArr, i6 * 2);
        }
        int[] iArr2 = this.f10171b;
        int i10 = this.f10172c;
        this.f10172c = i10 + 1;
        iArr2[i10] = 1;
        this.f10170a.write(91);
    }

    public void c() throws IOException {
        p();
        a();
        int i6 = this.f10172c;
        int[] iArr = this.f10171b;
        if (i6 == iArr.length) {
            this.f10171b = Arrays.copyOf(iArr, i6 * 2);
        }
        int[] iArr2 = this.f10171b;
        int i10 = this.f10172c;
        this.f10172c = i10 + 1;
        iArr2[i10] = 3;
        this.f10170a.write(123);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10170a.close();
        int i6 = this.f10172c;
        if (i6 > 1 || (i6 == 1 && this.f10171b[i6 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f10172c = 0;
    }

    public final void d(int i6, int i10, char c5) throws IOException {
        int iJ = j();
        if (iJ != i10 && iJ != i6) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f10174g != null) {
            throw new IllegalStateException("Dangling name: " + this.f10174g);
        }
        this.f10172c--;
        if (iJ == i10) {
            h();
        }
        this.f10170a.write(c5);
    }

    public void e() throws IOException {
        d(1, 2, ']');
    }

    public void f() throws IOException {
        d(3, 5, '}');
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f10172c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f10170a.flush();
    }

    public void g(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.f10174g != null) {
            throw new IllegalStateException();
        }
        if (this.f10172c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f10174g = str;
    }

    public b i() throws IOException {
        if (this.f10174g != null) {
            if (!this.f10175h) {
                this.f10174g = null;
                return this;
            }
            p();
        }
        a();
        this.f10170a.write("null");
        return this;
    }

    public final int j() {
        int i6 = this.f10172c;
        if (i6 != 0) {
            return this.f10171b[i6 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void k(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f
            if (r0 == 0) goto L7
            java.lang.String[] r0 = t7.b.f10169j
            goto L9
        L7:
            java.lang.String[] r0 = t7.b.f10168i
        L9:
            java.io.Writer r1 = r8.f10170a
            r2 = 34
            r1.write(r2)
            int r3 = r9.length()
            r4 = 0
            r5 = 0
        L16:
            if (r4 >= r3) goto L41
            char r6 = r9.charAt(r4)
            r7 = 128(0x80, float:1.8E-43)
            if (r6 >= r7) goto L25
            r6 = r0[r6]
            if (r6 != 0) goto L32
            goto L3e
        L25:
            r7 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r7) goto L2c
            java.lang.String r6 = "\\u2028"
            goto L32
        L2c:
            r7 = 8233(0x2029, float:1.1537E-41)
            if (r6 != r7) goto L3e
            java.lang.String r6 = "\\u2029"
        L32:
            if (r5 >= r4) goto L39
            int r7 = r4 - r5
            r1.write(r9, r5, r7)
        L39:
            r1.write(r6)
            int r5 = r4 + 1
        L3e:
            int r4 = r4 + 1
            goto L16
        L41:
            if (r5 >= r3) goto L47
            int r3 = r3 - r5
            r1.write(r9, r5, r3)
        L47:
            r1.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: t7.b.k(java.lang.String):void");
    }

    public void l(long j10) throws IOException {
        p();
        a();
        this.f10170a.write(Long.toString(j10));
    }

    public void m(Number number) throws IOException {
        if (number == null) {
            i();
            return;
        }
        p();
        String string = number.toString();
        if (this.f10173e || !(string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            a();
            this.f10170a.append((CharSequence) string);
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
    }

    public void n(String str) throws IOException {
        if (str == null) {
            i();
            return;
        }
        p();
        a();
        k(str);
    }

    public void o(boolean z7) throws IOException {
        p();
        a();
        this.f10170a.write(z7 ? "true" : "false");
    }

    public final void p() throws IOException {
        if (this.f10174g != null) {
            int iJ = j();
            if (iJ == 5) {
                this.f10170a.write(44);
            } else if (iJ != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            h();
            this.f10171b[this.f10172c - 1] = 4;
            k(this.f10174g);
            this.f10174g = null;
        }
    }

    public final void h() {
    }
}
