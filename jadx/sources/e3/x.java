package e3;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.Shader;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.concurrent.locks.Lock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x extends e {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f6542c = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(v2.e.f10660a);

    /* renamed from: b, reason: collision with root package name */
    public final int f6543b;

    public x(int i6) {
        r3.f.a("roundingRadius must be greater than 0.", i6 > 0);
        this.f6543b = i6;
    }

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f6542c);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f6543b).array());
    }

    @Override // e3.e
    public final Bitmap c(y2.a aVar, Bitmap bitmap, int i6, int i10) {
        Bitmap bitmapD;
        Paint paint = z.f6544a;
        int i11 = this.f6543b;
        r3.f.a("roundingRadius must be greater than 0.", i11 > 0);
        Bitmap.Config configC = z.c(bitmap);
        Bitmap.Config configC2 = z.c(bitmap);
        if (configC2.equals(bitmap.getConfig())) {
            bitmapD = bitmap;
        } else {
            bitmapD = aVar.d(bitmap.getWidth(), bitmap.getHeight(), configC2);
            new Canvas(bitmapD).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
        Bitmap bitmapD2 = aVar.d(bitmapD.getWidth(), bitmapD.getHeight(), configC);
        bitmapD2.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmapD, tileMode, tileMode);
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, bitmapD2.getWidth(), bitmapD2.getHeight());
        Lock lock = z.f6545b;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmapD2);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            float f = i11;
            canvas.drawRoundRect(rectF, f, f, paint2);
            canvas.setBitmap(null);
            lock.unlock();
            if (!bitmapD.equals(bitmap)) {
                aVar.e(bitmapD);
            }
            return bitmapD2;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        return (obj instanceof x) && this.f6543b == ((x) obj).f6543b;
    }

    @Override // v2.e
    public final int hashCode() {
        return r3.n.g(-569625254, r3.n.g(this.f6543b, 17));
    }
}
