package u;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends c {
    public i[] f;

    /* renamed from: g, reason: collision with root package name */
    public i[] f10299g;

    /* renamed from: h, reason: collision with root package name */
    public int f10300h;

    /* renamed from: i, reason: collision with root package name */
    public f f10301i;

    @Override // u.c
    public final i d(boolean[] zArr) {
        int i6 = -1;
        for (int i10 = 0; i10 < this.f10300h; i10++) {
            i[] iVarArr = this.f;
            i iVar = iVarArr[i10];
            if (!zArr[iVar.f10303b]) {
                f fVar = this.f10301i;
                fVar.f10297a = iVar;
                int i11 = 8;
                if (i6 == -1) {
                    while (i11 >= 0) {
                        float f = fVar.f10297a.f10307h[i11];
                        if (f <= 0.0f) {
                            if (f < 0.0f) {
                                i6 = i10;
                                break;
                            }
                            i11--;
                        }
                    }
                } else {
                    i iVar2 = iVarArr[i6];
                    while (true) {
                        if (i11 >= 0) {
                            float f3 = iVar2.f10307h[i11];
                            float f4 = fVar.f10297a.f10307h[i11];
                            if (f4 == f3) {
                                i11--;
                            } else if (f4 < f3) {
                            }
                        }
                    }
                }
            }
        }
        if (i6 == -1) {
            return null;
        }
        return this.f[i6];
    }

    @Override // u.c
    public final void h(c cVar, boolean z7) {
        i iVar = cVar.f10279a;
        if (iVar == null) {
            return;
        }
        b bVar = cVar.d;
        int iD = bVar.d();
        for (int i6 = 0; i6 < iD; i6++) {
            i iVarI = bVar.i(i6);
            float fA = bVar.a(i6);
            f fVar = this.f10301i;
            fVar.f10297a = iVarI;
            boolean z10 = iVarI.f10302a;
            float[] fArr = iVar.f10307h;
            if (z10) {
                boolean z11 = true;
                for (int i10 = 0; i10 < 9; i10++) {
                    float[] fArr2 = fVar.f10297a.f10307h;
                    float f = (fArr[i10] * fA) + fArr2[i10];
                    fArr2[i10] = f;
                    if (Math.abs(f) < 1.0E-4f) {
                        fVar.f10297a.f10307h[i10] = 0.0f;
                    } else {
                        z11 = false;
                    }
                }
                if (z11) {
                    fVar.f10298b.j(fVar.f10297a);
                }
            } else {
                for (int i11 = 0; i11 < 9; i11++) {
                    float f3 = fArr[i11];
                    if (f3 != 0.0f) {
                        float f4 = f3 * fA;
                        if (Math.abs(f4) < 1.0E-4f) {
                            f4 = 0.0f;
                        }
                        fVar.f10297a.f10307h[i11] = f4;
                    } else {
                        fVar.f10297a.f10307h[i11] = 0.0f;
                    }
                }
                i(iVarI);
            }
            this.f10280b = (cVar.f10280b * fA) + this.f10280b;
        }
        j(iVar);
    }

    public final void i(i iVar) {
        int i6;
        int i10 = this.f10300h + 1;
        i[] iVarArr = this.f;
        if (i10 > iVarArr.length) {
            i[] iVarArr2 = (i[]) Arrays.copyOf(iVarArr, iVarArr.length * 2);
            this.f = iVarArr2;
            this.f10299g = (i[]) Arrays.copyOf(iVarArr2, iVarArr2.length * 2);
        }
        i[] iVarArr3 = this.f;
        int i11 = this.f10300h;
        iVarArr3[i11] = iVar;
        int i12 = i11 + 1;
        this.f10300h = i12;
        if (i12 > 1 && iVarArr3[i11].f10303b > iVar.f10303b) {
            int i13 = 0;
            while (true) {
                i6 = this.f10300h;
                if (i13 >= i6) {
                    break;
                }
                this.f10299g[i13] = this.f[i13];
                i13++;
            }
            Arrays.sort(this.f10299g, 0, i6, new a0.e(8));
            for (int i14 = 0; i14 < this.f10300h; i14++) {
                this.f[i14] = this.f10299g[i14];
            }
        }
        iVar.f10302a = true;
        iVar.a(this);
    }

    public final void j(i iVar) {
        int i6 = 0;
        while (i6 < this.f10300h) {
            if (this.f[i6] == iVar) {
                while (true) {
                    int i10 = this.f10300h;
                    if (i6 >= i10 - 1) {
                        this.f10300h = i10 - 1;
                        iVar.f10302a = false;
                        return;
                    } else {
                        i[] iVarArr = this.f;
                        int i11 = i6 + 1;
                        iVarArr[i6] = iVarArr[i11];
                        i6 = i11;
                    }
                }
            } else {
                i6++;
            }
        }
    }

    @Override // u.c
    public final String toString() {
        String str = " goal -> (" + this.f10280b + ") : ";
        for (int i6 = 0; i6 < this.f10300h; i6++) {
            i iVar = this.f[i6];
            f fVar = this.f10301i;
            fVar.f10297a = iVar;
            str = str + fVar + " ";
        }
        return str;
    }
}
