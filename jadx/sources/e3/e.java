package e3;

import android.content.Context;
import android.graphics.Bitmap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e implements v2.l {
    @Override // v2.l
    public final x2.x b(Context context, x2.x xVar, int i6, int i10) {
        if (!r3.n.i(i6, i10)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i6 + " or height: " + i10 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        y2.a aVar = com.bumptech.glide.b.a(context).f3494a;
        Bitmap bitmap = (Bitmap) xVar.get();
        if (i6 == Integer.MIN_VALUE) {
            i6 = bitmap.getWidth();
        }
        if (i10 == Integer.MIN_VALUE) {
            i10 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(aVar, bitmap, i6, i10);
        return bitmap.equals(bitmapC) ? xVar : d.b(bitmapC, aVar);
    }

    public abstract Bitmap c(y2.a aVar, Bitmap bitmap, int i6, int i10);
}
