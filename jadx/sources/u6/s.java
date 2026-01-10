package u6;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class s extends u {

    /* renamed from: h, reason: collision with root package name */
    public static final RectF f10426h = new RectF();

    /* renamed from: b, reason: collision with root package name */
    public final float f10427b;

    /* renamed from: c, reason: collision with root package name */
    public final float f10428c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final float f10429e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f10430g;

    public s(float f, float f3, float f4, float f5) {
        this.f10427b = f;
        this.f10428c = f3;
        this.d = f4;
        this.f10429e = f5;
    }

    @Override // u6.u
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f10433a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        RectF rectF = f10426h;
        rectF.set(this.f10427b, this.f10428c, this.d, this.f10429e);
        path.arcTo(rectF, this.f, this.f10430g, false);
        path.transform(matrix);
    }
}
