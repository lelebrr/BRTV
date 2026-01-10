package t;

import android.util.SparseArray;
import android.view.View;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 extends h0 {
    public SparseArray f;

    /* renamed from: g, reason: collision with root package name */
    public float[] f9924g;

    @Override // t.h0
    public final void b(int i6, float f) {
        throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
    }

    @Override // t.h0
    public final void c(View view, float f) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.f9931a.s(f, this.f9924g);
        ((y.a) this.f.valueAt(0)).g(view, this.f9924g);
    }

    @Override // t.h0
    public final void d(int i6) {
        SparseArray sparseArray = this.f;
        int size = sparseArray.size();
        int iD = ((y.a) sparseArray.valueAt(0)).d();
        double[] dArr = new double[size];
        this.f9924g = new float[iD];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, iD);
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = sparseArray.keyAt(i10);
            y.a aVar = (y.a) sparseArray.valueAt(i10);
            dArr[i10] = iKeyAt * 0.01d;
            aVar.c(this.f9924g);
            int i11 = 0;
            while (true) {
                if (i11 < this.f9924g.length) {
                    dArr2[i10][i11] = r7[i11];
                    i11++;
                }
            }
        }
        this.f9931a = r4.b.k(i6, dArr, dArr2);
    }
}
