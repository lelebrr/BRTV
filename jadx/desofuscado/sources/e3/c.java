package e3;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import java.io.IOException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements v2.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6491a;

    /* renamed from: b, reason: collision with root package name */
    public final y2.a f6492b;

    public c() {
        this.f6491a = 0;
        this.f6492b = new q1.f0(10);
    }

    @Override // v2.j
    public final x2.x a(Object obj, int i6, int i10, v2.h hVar) {
        switch (this.f6491a) {
            case 0:
                return c(android.support.v4.media.session.b.g(obj), i6, i10, hVar);
            default:
                return d.b(((t2.d) obj).b(), this.f6492b);
        }
    }

    @Override // v2.j
    public final /* bridge */ /* synthetic */ boolean b(Object obj, v2.h hVar) {
        switch (this.f6491a) {
            case 0:
                android.support.v4.media.session.b.w(obj);
                break;
            default:
                break;
        }
        return true;
    }

    public d c(ImageDecoder.Source source, int i6, int i10, v2.h hVar) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, new d3.b(i6, i10, hVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + i6 + "x" + i10 + "]");
        }
        return new d(bitmapDecodeBitmap, (q1.f0) this.f6492b);
    }

    public c(y2.a aVar) {
        this.f6491a = 1;
        this.f6492b = aVar;
    }
}
