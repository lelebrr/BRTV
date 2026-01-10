package u;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10302a;

    /* renamed from: e, reason: collision with root package name */
    public float f10305e;

    /* renamed from: l, reason: collision with root package name */
    public int f10311l;

    /* renamed from: b, reason: collision with root package name */
    public int f10303b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f10304c = -1;
    public int d = 0;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f10306g = new float[9];

    /* renamed from: h, reason: collision with root package name */
    public final float[] f10307h = new float[9];

    /* renamed from: i, reason: collision with root package name */
    public c[] f10308i = new c[16];

    /* renamed from: j, reason: collision with root package name */
    public int f10309j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f10310k = 0;

    public i(int i6) {
        this.f10311l = i6;
    }

    public final void a(c cVar) {
        int i6 = 0;
        while (true) {
            int i10 = this.f10309j;
            if (i6 >= i10) {
                c[] cVarArr = this.f10308i;
                if (i10 >= cVarArr.length) {
                    this.f10308i = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
                }
                c[] cVarArr2 = this.f10308i;
                int i11 = this.f10309j;
                cVarArr2[i11] = cVar;
                this.f10309j = i11 + 1;
                return;
            }
            if (this.f10308i[i6] == cVar) {
                return;
            } else {
                i6++;
            }
        }
    }

    public final void b(c cVar) {
        int i6 = this.f10309j;
        int i10 = 0;
        while (i10 < i6) {
            if (this.f10308i[i10] == cVar) {
                while (i10 < i6 - 1) {
                    c[] cVarArr = this.f10308i;
                    int i11 = i10 + 1;
                    cVarArr[i10] = cVarArr[i11];
                    i10 = i11;
                }
                this.f10309j--;
                return;
            }
            i10++;
        }
    }

    public final void c() {
        this.f10311l = 5;
        this.d = 0;
        this.f10303b = -1;
        this.f10304c = -1;
        this.f10305e = 0.0f;
        this.f = false;
        int i6 = this.f10309j;
        for (int i10 = 0; i10 < i6; i10++) {
            this.f10308i[i10] = null;
        }
        this.f10309j = 0;
        this.f10310k = 0;
        this.f10302a = false;
        Arrays.fill(this.f10307h, 0.0f);
    }

    public final void d(c cVar) {
        int i6 = this.f10309j;
        for (int i10 = 0; i10 < i6; i10++) {
            this.f10308i[i10].h(cVar, false);
        }
        this.f10309j = 0;
    }

    public final String toString() {
        return "" + this.f10303b;
    }
}
