package s4;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9795a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f9796b;

    public /* synthetic */ i(k kVar, int i6) {
        this.f9795a = i6;
        this.f9796b = kVar;
    }

    @Override // s4.a
    public final void f(Bitmap bitmap) {
        k kVar = this.f9796b;
        switch (this.f9795a) {
            case 0:
                v4.b bVar = k.f9798v;
                Bitmap bitmap2 = null;
                if (bitmap != null) {
                    int width = bitmap.getWidth();
                    float f = width;
                    int i6 = (int) (((9.0f * f) / 16.0f) + 0.5f);
                    float f3 = (i6 - r4) / 2.0f;
                    RectF rectF = new RectF(0.0f, f3, f, bitmap.getHeight() + f3);
                    Bitmap.Config config = bitmap.getConfig();
                    if (config == null) {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, i6, config);
                    new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, (Rect) null, rectF, (Paint) null);
                    bitmap2 = bitmapCreateBitmap;
                }
                kVar.b(bitmap2, 0);
                break;
            default:
                kVar.b(bitmap, 3);
                break;
        }
    }
}
