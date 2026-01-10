package g3;

import a7.f;
import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import v2.h;
import v2.j;
import x2.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7093a;

    /* renamed from: b, reason: collision with root package name */
    public final f f7094b;

    public /* synthetic */ a(int i6, f fVar) {
        this.f7093a = i6;
        this.f7094b = fVar;
    }

    @Override // v2.j
    public final x a(Object obj, int i6, int i10, h hVar) {
        switch (this.f7093a) {
            case 0:
                return f.e(ImageDecoder.createSource((ByteBuffer) obj), i6, i10, hVar);
            default:
                return f.e(ImageDecoder.createSource(r3.a.b((InputStream) obj)), i6, i10, hVar);
        }
    }

    @Override // v2.j
    public final boolean b(Object obj, h hVar) throws IOException {
        switch (this.f7093a) {
            case 0:
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeQ = u7.d.q((ArrayList) this.f7094b.f169b, (ByteBuffer) obj);
                if (imageHeaderParser$ImageTypeQ == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeQ == ImageHeaderParser$ImageType.ANIMATED_AVIF)) {
                }
                break;
            default:
                f fVar = this.f7094b;
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeP = u7.d.p((ArrayList) fVar.f169b, (InputStream) obj, (y2.f) fVar.f170c);
                if (imageHeaderParser$ImageTypeP == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageTypeP == ImageHeaderParser$ImageType.ANIMATED_AVIF)) {
                }
                break;
        }
        return true;
    }
}
