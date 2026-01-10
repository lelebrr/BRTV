package e3;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends e {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f6506b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(v2.e.f10660a);

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f6506b);
    }

    @Override // e3.e
    public final Bitmap c(y2.a aVar, Bitmap bitmap, int i6, int i10) {
        float width;
        float height;
        Paint paint = z.f6544a;
        if (bitmap.getWidth() == i6 && bitmap.getHeight() == i10) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i10 > bitmap.getHeight() * i6) {
            width = i10 / bitmap.getHeight();
            width2 = (i6 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i6 / bitmap.getWidth();
            height = (i10 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapD = aVar.d(i6, i10, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmapD.setHasAlpha(bitmap.hasAlpha());
        z.a(bitmap, bitmapD, matrix);
        return bitmapD;
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        return obj instanceof h;
    }

    @Override // v2.e
    public final int hashCode() {
        return -599754482;
    }
}
