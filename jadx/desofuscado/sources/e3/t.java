package e3;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t implements v2.d {
    @Override // v2.d
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // v2.d
    public final int b(InputStream inputStream, y2.f fVar) {
        int iC = new e1.g(inputStream).c();
        if (iC == 0) {
            return -1;
        }
        return iC;
    }

    @Override // v2.d
    public final int c(ByteBuffer byteBuffer, y2.f fVar) {
        AtomicReference atomicReference = r3.a.f9488a;
        return b(new d2.i(byteBuffer), fVar);
    }

    @Override // v2.d
    public final ImageHeaderParser$ImageType d(InputStream inputStream) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }
}
