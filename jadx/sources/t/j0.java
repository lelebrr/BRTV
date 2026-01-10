package t;

import android.util.SparseArray;
import android.view.View;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 extends m0 {

    /* renamed from: g, reason: collision with root package name */
    public SparseArray f9941g;

    /* renamed from: h, reason: collision with root package name */
    public SparseArray f9942h;

    /* renamed from: i, reason: collision with root package name */
    public float[] f9943i;

    /* renamed from: j, reason: collision with root package name */
    public float[] f9944j;

    @Override // t.m0
    public final boolean b(float f, long j10, View view, u uVar) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.f9946a.s(f, this.f9943i);
        float[] fArr = this.f9943i;
        float f3 = fArr[fArr.length - 2];
        float f4 = fArr[fArr.length - 1];
        this.f = (float) (((((j10 - this.f9949e) * 1.0E-9d) * f3) + this.f) % 1.0d);
        this.f9949e = j10;
        float fSin = (float) Math.sin(r0 * 6.2831855f);
        this.d = false;
        int i6 = 0;
        while (true) {
            float[] fArr2 = this.f9944j;
            if (i6 >= fArr2.length) {
                break;
            }
            boolean z7 = this.d;
            float f5 = this.f9943i[i6];
            this.d = z7 | (((double) f5) != 0.0d);
            fArr2[i6] = (f5 * fSin) + f4;
            i6++;
        }
        ((y.a) this.f9941g.valueAt(0)).g(view, this.f9944j);
        if (f3 != 0.0f) {
            this.d = true;
        }
        return this.d;
    }

    @Override // t.m0
    public final void c(int i6) {
        SparseArray sparseArray = this.f9941g;
        int size = sparseArray.size();
        int iD = ((y.a) sparseArray.valueAt(0)).d();
        double[] dArr = new double[size];
        int i10 = iD + 2;
        this.f9943i = new float[i10];
        this.f9944j = new float[iD];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i10);
        for (int i11 = 0; i11 < size; i11++) {
            int iKeyAt = sparseArray.keyAt(i11);
            y.a aVar = (y.a) sparseArray.valueAt(i11);
            float[] fArr = (float[]) this.f9942h.valueAt(i11);
            dArr[i11] = iKeyAt * 0.01d;
            aVar.c(this.f9943i);
            int i12 = 0;
            while (true) {
                if (i12 < this.f9943i.length) {
                    dArr2[i11][i12] = r10[i12];
                    i12++;
                }
            }
            double[] dArr3 = dArr2[i11];
            dArr3[iD] = fArr[0];
            dArr3[iD + 1] = fArr[1];
        }
        this.f9946a = r4.b.k(i6, dArr, dArr2);
    }
}
