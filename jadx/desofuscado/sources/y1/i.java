package y1;

import android.graphics.Matrix;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f11286a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final View f11287b;

    /* renamed from: c, reason: collision with root package name */
    public final float[] f11288c;
    public float d;

    /* renamed from: e, reason: collision with root package name */
    public float f11289e;

    public i(View view, float[] fArr) {
        this.f11287b = view;
        float[] fArr2 = (float[]) fArr.clone();
        this.f11288c = fArr2;
        this.d = fArr2[2];
        this.f11289e = fArr2[5];
        a();
    }

    public final void a() {
        float f = this.d;
        float[] fArr = this.f11288c;
        fArr[2] = f;
        fArr[5] = this.f11289e;
        Matrix matrix = this.f11286a;
        matrix.setValues(fArr);
        g0.f11276a.l(this.f11287b, matrix);
    }
}
