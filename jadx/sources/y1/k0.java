package y1;

import android.graphics.Matrix;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class k0 extends j0 {
    @Override // y1.i0, y1.v
    public final void h(View view, int i6, int i10, int i11, int i12) {
        view.setLeftTopRightBottom(i6, i10, i11, i12);
    }

    @Override // y1.j0, y1.v
    public final void i(int i6, View view) {
        view.setTransitionVisibility(i6);
    }

    @Override // y1.h0
    public final float k(View view) {
        return view.getTransitionAlpha();
    }

    @Override // y1.h0
    public final void l(View view, Matrix matrix) {
        view.setAnimationMatrix(matrix);
    }

    @Override // y1.h0
    public final void m(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // y1.h0
    public final void n(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // y1.h0
    public final void o(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
