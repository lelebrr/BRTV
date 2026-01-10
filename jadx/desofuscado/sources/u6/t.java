package u6;

import android.graphics.Matrix;
import android.graphics.Path;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class t extends u {

    /* renamed from: b, reason: collision with root package name */
    public float f10431b;

    /* renamed from: c, reason: collision with root package name */
    public float f10432c;

    @Override // u6.u
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.f10433a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.f10431b, this.f10432c);
        path.transform(matrix);
    }
}
