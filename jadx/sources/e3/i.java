package e3;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.util.Log;
import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends e {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f6507b = "com.bumptech.glide.load.resource.bitmap.CenterInside".getBytes(v2.e.f10660a);

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f6507b);
    }

    @Override // e3.e
    public final Bitmap c(y2.a aVar, Bitmap bitmap, int i6, int i10) {
        Paint paint = z.f6544a;
        if (bitmap.getWidth() > i6 || bitmap.getHeight() > i10) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size too big for input, fit centering instead");
            }
            return z.b(aVar, bitmap, i6, i10);
        }
        if (!Log.isLoggable("TransformationUtils", 2)) {
            return bitmap;
        }
        Log.v("TransformationUtils", "requested target size larger or equal to input, returning input");
        return bitmap;
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        return obj instanceof i;
    }

    @Override // v2.e
    public final int hashCode() {
        return -670243078;
    }
}
