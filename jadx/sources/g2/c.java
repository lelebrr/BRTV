package g2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import d2.p;
import java.nio.ByteBuffer;
import okio.Buffer;
import z1.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7068a;

    /* renamed from: b, reason: collision with root package name */
    public final m2.m f7069b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f7070c;

    public /* synthetic */ c(Object obj, m2.m mVar, int i6) {
        this.f7068a = i6;
        this.f7070c = obj;
        this.f7069b = mVar;
    }

    @Override // g2.g
    public final Object a(a9.d dVar) {
        d2.f fVar = d2.f.f6026b;
        m2.m mVar = this.f7069b;
        Object obj = this.f7070c;
        switch (this.f7068a) {
            case 0:
                return new d(new BitmapDrawable(mVar.f8229a.getResources(), (Bitmap) obj), false, fVar);
            case 1:
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                try {
                    Buffer buffer = new Buffer();
                    buffer.write(byteBuffer);
                    byteBuffer.position(0);
                    Context context = mVar.f8229a;
                    return new m(new p(buffer, null), null, fVar);
                } catch (Throwable th) {
                    byteBuffer.position(0);
                    throw th;
                }
            default:
                Drawable bitmapDrawable = (Drawable) obj;
                Bitmap.Config[] configArr = r2.f.f9467a;
                boolean z7 = (bitmapDrawable instanceof VectorDrawable) || (bitmapDrawable instanceof n);
                if (z7) {
                    bitmapDrawable = new BitmapDrawable(mVar.f8229a.getResources(), u7.d.d(bitmapDrawable, mVar.f8230b, mVar.d, mVar.f8232e, mVar.f));
                }
                return new d(bitmapDrawable, z7, fVar);
        }
    }
}
