package u;

import ea.q;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a implements b {

    /* renamed from: b, reason: collision with root package name */
    public final c f10272b;

    /* renamed from: c, reason: collision with root package name */
    public final a0.f f10273c;

    /* renamed from: a, reason: collision with root package name */
    public int f10271a = 0;
    public int d = 8;

    /* renamed from: e, reason: collision with root package name */
    public int[] f10274e = new int[8];
    public int[] f = new int[8];

    /* renamed from: g, reason: collision with root package name */
    public float[] f10275g = new float[8];

    /* renamed from: h, reason: collision with root package name */
    public int f10276h = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f10277i = -1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f10278j = false;

    public a(c cVar, a0.f fVar) {
        this.f10272b = cVar;
        this.f10273c = fVar;
    }

    @Override // u.b
    public final float a(int i6) {
        int i10 = this.f10276h;
        for (int i11 = 0; i10 != -1 && i11 < this.f10271a; i11++) {
            if (i11 == i6) {
                return this.f10275g[i10];
            }
            i10 = this.f[i10];
        }
        return 0.0f;
    }

    @Override // u.b
    public final float b(i iVar, boolean z7) {
        int i6 = this.f10276h;
        if (i6 == -1) {
            return 0.0f;
        }
        int i10 = 0;
        int i11 = -1;
        while (i6 != -1 && i10 < this.f10271a) {
            if (this.f10274e[i6] == iVar.f10303b) {
                if (i6 == this.f10276h) {
                    this.f10276h = this.f[i6];
                } else {
                    int[] iArr = this.f;
                    iArr[i11] = iArr[i6];
                }
                if (z7) {
                    iVar.b(this.f10272b);
                }
                iVar.f10310k--;
                this.f10271a--;
                this.f10274e[i6] = -1;
                if (this.f10278j) {
                    this.f10277i = i6;
                }
                return this.f10275g[i6];
            }
            i10++;
            i11 = i6;
            i6 = this.f[i6];
        }
        return 0.0f;
    }

    @Override // u.b
    public final float c(c cVar, boolean z7) {
        float fG = g(cVar.f10279a);
        b(cVar.f10279a, z7);
        b bVar = cVar.d;
        int iD = bVar.d();
        for (int i6 = 0; i6 < iD; i6++) {
            i iVarI = bVar.i(i6);
            f(iVarI, bVar.g(iVarI) * fG, z7);
        }
        return fG;
    }

    @Override // u.b
    public final void clear() {
        int i6 = this.f10276h;
        for (int i10 = 0; i6 != -1 && i10 < this.f10271a; i10++) {
            i iVar = ((i[]) this.f10273c.f40e)[this.f10274e[i6]];
            if (iVar != null) {
                iVar.b(this.f10272b);
            }
            i6 = this.f[i6];
        }
        this.f10276h = -1;
        this.f10277i = -1;
        this.f10278j = false;
        this.f10271a = 0;
    }

    @Override // u.b
    public final int d() {
        return this.f10271a;
    }

    @Override // u.b
    public final boolean e(i iVar) {
        int i6 = this.f10276h;
        if (i6 == -1) {
            return false;
        }
        for (int i10 = 0; i6 != -1 && i10 < this.f10271a; i10++) {
            if (this.f10274e[i6] == iVar.f10303b) {
                return true;
            }
            i6 = this.f[i6];
        }
        return false;
    }

    @Override // u.b
    public final void f(i iVar, float f, boolean z7) {
        if (f <= -0.001f || f >= 0.001f) {
            int i6 = this.f10276h;
            c cVar = this.f10272b;
            if (i6 == -1) {
                this.f10276h = 0;
                this.f10275g[0] = f;
                this.f10274e[0] = iVar.f10303b;
                this.f[0] = -1;
                iVar.f10310k++;
                iVar.a(cVar);
                this.f10271a++;
                if (this.f10278j) {
                    return;
                }
                int i10 = this.f10277i + 1;
                this.f10277i = i10;
                int[] iArr = this.f10274e;
                if (i10 >= iArr.length) {
                    this.f10278j = true;
                    this.f10277i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i11 = -1;
            for (int i12 = 0; i6 != -1 && i12 < this.f10271a; i12++) {
                int i13 = this.f10274e[i6];
                int i14 = iVar.f10303b;
                if (i13 == i14) {
                    float[] fArr = this.f10275g;
                    float f3 = fArr[i6] + f;
                    if (f3 > -0.001f && f3 < 0.001f) {
                        f3 = 0.0f;
                    }
                    fArr[i6] = f3;
                    if (f3 == 0.0f) {
                        if (i6 == this.f10276h) {
                            this.f10276h = this.f[i6];
                        } else {
                            int[] iArr2 = this.f;
                            iArr2[i11] = iArr2[i6];
                        }
                        if (z7) {
                            iVar.b(cVar);
                        }
                        if (this.f10278j) {
                            this.f10277i = i6;
                        }
                        iVar.f10310k--;
                        this.f10271a--;
                        return;
                    }
                    return;
                }
                if (i13 < i14) {
                    i11 = i6;
                }
                i6 = this.f[i6];
            }
            int length = this.f10277i;
            int i15 = length + 1;
            if (this.f10278j) {
                int[] iArr3 = this.f10274e;
                if (iArr3[length] != -1) {
                    length = iArr3.length;
                }
            } else {
                length = i15;
            }
            int[] iArr4 = this.f10274e;
            if (length >= iArr4.length && this.f10271a < iArr4.length) {
                int i16 = 0;
                while (true) {
                    int[] iArr5 = this.f10274e;
                    if (i16 >= iArr5.length) {
                        break;
                    }
                    if (iArr5[i16] == -1) {
                        length = i16;
                        break;
                    }
                    i16++;
                }
            }
            int[] iArr6 = this.f10274e;
            if (length >= iArr6.length) {
                length = iArr6.length;
                int i17 = this.d * 2;
                this.d = i17;
                this.f10278j = false;
                this.f10277i = length - 1;
                this.f10275g = Arrays.copyOf(this.f10275g, i17);
                this.f10274e = Arrays.copyOf(this.f10274e, this.d);
                this.f = Arrays.copyOf(this.f, this.d);
            }
            this.f10274e[length] = iVar.f10303b;
            this.f10275g[length] = f;
            if (i11 != -1) {
                int[] iArr7 = this.f;
                iArr7[length] = iArr7[i11];
                iArr7[i11] = length;
            } else {
                this.f[length] = this.f10276h;
                this.f10276h = length;
            }
            iVar.f10310k++;
            iVar.a(cVar);
            this.f10271a++;
            if (!this.f10278j) {
                this.f10277i++;
            }
            int i18 = this.f10277i;
            int[] iArr8 = this.f10274e;
            if (i18 >= iArr8.length) {
                this.f10278j = true;
                this.f10277i = iArr8.length - 1;
            }
        }
    }

    @Override // u.b
    public final float g(i iVar) {
        int i6 = this.f10276h;
        for (int i10 = 0; i6 != -1 && i10 < this.f10271a; i10++) {
            if (this.f10274e[i6] == iVar.f10303b) {
                return this.f10275g[i6];
            }
            i6 = this.f[i6];
        }
        return 0.0f;
    }

    @Override // u.b
    public final void h(i iVar, float f) {
        if (f == 0.0f) {
            b(iVar, true);
            return;
        }
        int i6 = this.f10276h;
        c cVar = this.f10272b;
        if (i6 == -1) {
            this.f10276h = 0;
            this.f10275g[0] = f;
            this.f10274e[0] = iVar.f10303b;
            this.f[0] = -1;
            iVar.f10310k++;
            iVar.a(cVar);
            this.f10271a++;
            if (this.f10278j) {
                return;
            }
            int i10 = this.f10277i + 1;
            this.f10277i = i10;
            int[] iArr = this.f10274e;
            if (i10 >= iArr.length) {
                this.f10278j = true;
                this.f10277i = iArr.length - 1;
                return;
            }
            return;
        }
        int i11 = -1;
        for (int i12 = 0; i6 != -1 && i12 < this.f10271a; i12++) {
            int i13 = this.f10274e[i6];
            int i14 = iVar.f10303b;
            if (i13 == i14) {
                this.f10275g[i6] = f;
                return;
            }
            if (i13 < i14) {
                i11 = i6;
            }
            i6 = this.f[i6];
        }
        int length = this.f10277i;
        int i15 = length + 1;
        if (this.f10278j) {
            int[] iArr2 = this.f10274e;
            if (iArr2[length] != -1) {
                length = iArr2.length;
            }
        } else {
            length = i15;
        }
        int[] iArr3 = this.f10274e;
        if (length >= iArr3.length && this.f10271a < iArr3.length) {
            int i16 = 0;
            while (true) {
                int[] iArr4 = this.f10274e;
                if (i16 >= iArr4.length) {
                    break;
                }
                if (iArr4[i16] == -1) {
                    length = i16;
                    break;
                }
                i16++;
            }
        }
        int[] iArr5 = this.f10274e;
        if (length >= iArr5.length) {
            length = iArr5.length;
            int i17 = this.d * 2;
            this.d = i17;
            this.f10278j = false;
            this.f10277i = length - 1;
            this.f10275g = Arrays.copyOf(this.f10275g, i17);
            this.f10274e = Arrays.copyOf(this.f10274e, this.d);
            this.f = Arrays.copyOf(this.f, this.d);
        }
        this.f10274e[length] = iVar.f10303b;
        this.f10275g[length] = f;
        if (i11 != -1) {
            int[] iArr6 = this.f;
            iArr6[length] = iArr6[i11];
            iArr6[i11] = length;
        } else {
            this.f[length] = this.f10276h;
            this.f10276h = length;
        }
        iVar.f10310k++;
        iVar.a(cVar);
        int i18 = this.f10271a + 1;
        this.f10271a = i18;
        if (!this.f10278j) {
            this.f10277i++;
        }
        int[] iArr7 = this.f10274e;
        if (i18 >= iArr7.length) {
            this.f10278j = true;
        }
        if (this.f10277i >= iArr7.length) {
            this.f10278j = true;
            this.f10277i = iArr7.length - 1;
        }
    }

    @Override // u.b
    public final i i(int i6) {
        int i10 = this.f10276h;
        for (int i11 = 0; i10 != -1 && i11 < this.f10271a; i11++) {
            if (i11 == i6) {
                return ((i[]) this.f10273c.f40e)[this.f10274e[i10]];
            }
            i10 = this.f[i10];
        }
        return null;
    }

    @Override // u.b
    public final void j(float f) {
        int i6 = this.f10276h;
        for (int i10 = 0; i6 != -1 && i10 < this.f10271a; i10++) {
            float[] fArr = this.f10275g;
            fArr[i6] = fArr[i6] / f;
            i6 = this.f[i6];
        }
    }

    @Override // u.b
    public final void k() {
        int i6 = this.f10276h;
        for (int i10 = 0; i6 != -1 && i10 < this.f10271a; i10++) {
            float[] fArr = this.f10275g;
            fArr[i6] = fArr[i6] * (-1.0f);
            i6 = this.f[i6];
        }
    }

    public final String toString() {
        int i6 = this.f10276h;
        String string = "";
        for (int i10 = 0; i6 != -1 && i10 < this.f10271a; i10++) {
            StringBuilder sbM = q.m(q.h(string, " -> "));
            sbM.append(this.f10275g[i6]);
            sbM.append(" : ");
            StringBuilder sbM2 = q.m(sbM.toString());
            sbM2.append(((i[]) this.f10273c.f40e)[this.f10274e[i6]]);
            string = sbM2.toString();
            i6 = this.f[i6];
        }
        return string;
    }
}
