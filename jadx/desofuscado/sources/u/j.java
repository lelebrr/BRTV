package u;

import ea.q;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j implements b {

    /* renamed from: a, reason: collision with root package name */
    public int f10312a = 16;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f10313b = new int[16];

    /* renamed from: c, reason: collision with root package name */
    public int[] f10314c = new int[16];
    public int[] d = new int[16];

    /* renamed from: e, reason: collision with root package name */
    public float[] f10315e = new float[16];
    public int[] f = new int[16];

    /* renamed from: g, reason: collision with root package name */
    public int[] f10316g = new int[16];

    /* renamed from: h, reason: collision with root package name */
    public int f10317h = 0;

    /* renamed from: i, reason: collision with root package name */
    public int f10318i = -1;

    /* renamed from: j, reason: collision with root package name */
    public final d f10319j;

    /* renamed from: k, reason: collision with root package name */
    public final a0.f f10320k;

    public j(d dVar, a0.f fVar) {
        this.f10319j = dVar;
        this.f10320k = fVar;
        clear();
    }

    @Override // u.b
    public final float a(int i6) {
        int i10 = this.f10317h;
        int i11 = this.f10318i;
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 == i6) {
                return this.f10315e[i11];
            }
            i11 = this.f10316g[i11];
            if (i11 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    @Override // u.b
    public final float b(i iVar, boolean z7) {
        int[] iArr;
        int i6;
        int iN = n(iVar);
        if (iN == -1) {
            return 0.0f;
        }
        int i10 = iVar.f10303b;
        int i11 = i10 % 16;
        int[] iArr2 = this.f10313b;
        int i12 = iArr2[i11];
        if (i12 != -1) {
            if (this.d[i12] == i10) {
                int[] iArr3 = this.f10314c;
                iArr2[i11] = iArr3[i12];
                iArr3[i12] = -1;
            } else {
                while (true) {
                    iArr = this.f10314c;
                    i6 = iArr[i12];
                    if (i6 == -1 || this.d[i6] == i10) {
                        break;
                    }
                    i12 = i6;
                }
                if (i6 != -1 && this.d[i6] == i10) {
                    iArr[i12] = iArr[i6];
                    iArr[i6] = -1;
                }
            }
        }
        float f = this.f10315e[iN];
        if (this.f10318i == iN) {
            this.f10318i = this.f10316g[iN];
        }
        this.d[iN] = -1;
        int[] iArr4 = this.f;
        int i13 = iArr4[iN];
        if (i13 != -1) {
            int[] iArr5 = this.f10316g;
            iArr5[i13] = iArr5[iN];
        }
        int i14 = this.f10316g[iN];
        if (i14 != -1) {
            iArr4[i14] = iArr4[iN];
        }
        this.f10317h--;
        iVar.f10310k--;
        if (z7) {
            iVar.b(this.f10319j);
        }
        return f;
    }

    @Override // u.b
    public final float c(c cVar, boolean z7) {
        float fG = g(cVar.f10279a);
        b(cVar.f10279a, z7);
        j jVar = (j) cVar.d;
        int i6 = jVar.f10317h;
        int i10 = 0;
        int i11 = 0;
        while (i10 < i6) {
            int i12 = jVar.d[i11];
            if (i12 != -1) {
                f(((i[]) this.f10320k.f40e)[i12], jVar.f10315e[i11] * fG, z7);
                i10++;
            }
            i11++;
        }
        return fG;
    }

    @Override // u.b
    public final void clear() {
        int i6 = this.f10317h;
        for (int i10 = 0; i10 < i6; i10++) {
            i iVarI = i(i10);
            if (iVarI != null) {
                iVarI.b(this.f10319j);
            }
        }
        for (int i11 = 0; i11 < this.f10312a; i11++) {
            this.d[i11] = -1;
            this.f10314c[i11] = -1;
        }
        for (int i12 = 0; i12 < 16; i12++) {
            this.f10313b[i12] = -1;
        }
        this.f10317h = 0;
        this.f10318i = -1;
    }

    @Override // u.b
    public final int d() {
        return this.f10317h;
    }

    @Override // u.b
    public final boolean e(i iVar) {
        return n(iVar) != -1;
    }

    @Override // u.b
    public final void f(i iVar, float f, boolean z7) {
        if (f <= -0.001f || f >= 0.001f) {
            int iN = n(iVar);
            if (iN == -1) {
                h(iVar, f);
                return;
            }
            float[] fArr = this.f10315e;
            float f3 = fArr[iN] + f;
            fArr[iN] = f3;
            if (f3 <= -0.001f || f3 >= 0.001f) {
                return;
            }
            fArr[iN] = 0.0f;
            b(iVar, z7);
        }
    }

    @Override // u.b
    public final float g(i iVar) {
        int iN = n(iVar);
        if (iN != -1) {
            return this.f10315e[iN];
        }
        return 0.0f;
    }

    @Override // u.b
    public final void h(i iVar, float f) {
        if (f > -0.001f && f < 0.001f) {
            b(iVar, true);
            return;
        }
        int i6 = 0;
        if (this.f10317h == 0) {
            m(0, iVar, f);
            l(iVar, 0);
            this.f10318i = 0;
            return;
        }
        int iN = n(iVar);
        if (iN != -1) {
            this.f10315e[iN] = f;
            return;
        }
        int i10 = this.f10317h + 1;
        int i11 = this.f10312a;
        if (i10 >= i11) {
            int i12 = i11 * 2;
            this.d = Arrays.copyOf(this.d, i12);
            this.f10315e = Arrays.copyOf(this.f10315e, i12);
            this.f = Arrays.copyOf(this.f, i12);
            this.f10316g = Arrays.copyOf(this.f10316g, i12);
            this.f10314c = Arrays.copyOf(this.f10314c, i12);
            for (int i13 = this.f10312a; i13 < i12; i13++) {
                this.d[i13] = -1;
                this.f10314c[i13] = -1;
            }
            this.f10312a = i12;
        }
        int i14 = this.f10317h;
        int i15 = this.f10318i;
        int i16 = -1;
        for (int i17 = 0; i17 < i14; i17++) {
            int i18 = this.d[i15];
            int i19 = iVar.f10303b;
            if (i18 == i19) {
                this.f10315e[i15] = f;
                return;
            }
            if (i18 < i19) {
                i16 = i15;
            }
            i15 = this.f10316g[i15];
            if (i15 == -1) {
                break;
            }
        }
        while (true) {
            if (i6 >= this.f10312a) {
                i6 = -1;
                break;
            } else if (this.d[i6] == -1) {
                break;
            } else {
                i6++;
            }
        }
        m(i6, iVar, f);
        if (i16 != -1) {
            this.f[i6] = i16;
            int[] iArr = this.f10316g;
            iArr[i6] = iArr[i16];
            iArr[i16] = i6;
        } else {
            this.f[i6] = -1;
            if (this.f10317h > 0) {
                this.f10316g[i6] = this.f10318i;
                this.f10318i = i6;
            } else {
                this.f10316g[i6] = -1;
            }
        }
        int i20 = this.f10316g[i6];
        if (i20 != -1) {
            this.f[i20] = i6;
        }
        l(iVar, i6);
    }

    @Override // u.b
    public final i i(int i6) {
        int i10 = this.f10317h;
        if (i10 == 0) {
            return null;
        }
        int i11 = this.f10318i;
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 == i6 && i11 != -1) {
                return ((i[]) this.f10320k.f40e)[this.d[i11]];
            }
            i11 = this.f10316g[i11];
            if (i11 == -1) {
                break;
            }
        }
        return null;
    }

    @Override // u.b
    public final void j(float f) {
        int i6 = this.f10317h;
        int i10 = this.f10318i;
        for (int i11 = 0; i11 < i6; i11++) {
            float[] fArr = this.f10315e;
            fArr[i10] = fArr[i10] / f;
            i10 = this.f10316g[i10];
            if (i10 == -1) {
                return;
            }
        }
    }

    @Override // u.b
    public final void k() {
        int i6 = this.f10317h;
        int i10 = this.f10318i;
        for (int i11 = 0; i11 < i6; i11++) {
            float[] fArr = this.f10315e;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.f10316g[i10];
            if (i10 == -1) {
                return;
            }
        }
    }

    public final void l(i iVar, int i6) {
        int[] iArr;
        int i10 = iVar.f10303b % 16;
        int[] iArr2 = this.f10313b;
        int i11 = iArr2[i10];
        if (i11 == -1) {
            iArr2[i10] = i6;
        } else {
            while (true) {
                iArr = this.f10314c;
                int i12 = iArr[i11];
                if (i12 == -1) {
                    break;
                } else {
                    i11 = i12;
                }
            }
            iArr[i11] = i6;
        }
        this.f10314c[i6] = -1;
    }

    public final void m(int i6, i iVar, float f) {
        this.d[i6] = iVar.f10303b;
        this.f10315e[i6] = f;
        this.f[i6] = -1;
        this.f10316g[i6] = -1;
        iVar.a(this.f10319j);
        iVar.f10310k++;
        this.f10317h++;
    }

    public final int n(i iVar) {
        if (this.f10317h == 0) {
            return -1;
        }
        int i6 = iVar.f10303b;
        int i10 = this.f10313b[i6 % 16];
        if (i10 == -1) {
            return -1;
        }
        if (this.d[i10] == i6) {
            return i10;
        }
        do {
            i10 = this.f10314c[i10];
            if (i10 == -1) {
                break;
            }
        } while (this.d[i10] != i6);
        if (i10 != -1 && this.d[i10] == i6) {
            return i10;
        }
        return -1;
    }

    public final String toString() {
        String strH;
        String strH2;
        String strH3 = hashCode() + " { ";
        int i6 = this.f10317h;
        for (int i10 = 0; i10 < i6; i10++) {
            i iVarI = i(i10);
            if (iVarI != null) {
                String str = strH3 + iVarI + " = " + a(i10) + " ";
                int iN = n(iVarI);
                String strH4 = q.h(str, "[p: ");
                int i11 = this.f[iN];
                a0.f fVar = this.f10320k;
                if (i11 != -1) {
                    StringBuilder sbM = q.m(strH4);
                    sbM.append(((i[]) fVar.f40e)[this.d[this.f[iN]]]);
                    strH = sbM.toString();
                } else {
                    strH = q.h(strH4, "none");
                }
                String strH5 = q.h(strH, ", n: ");
                if (this.f10316g[iN] != -1) {
                    StringBuilder sbM2 = q.m(strH5);
                    sbM2.append(((i[]) fVar.f40e)[this.d[this.f10316g[iN]]]);
                    strH2 = sbM2.toString();
                } else {
                    strH2 = q.h(strH5, "none");
                }
                strH3 = q.h(strH2, "]");
            }
        }
        return q.h(strH3, " }");
    }
}
