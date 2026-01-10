package e3;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u extends e {

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f6531b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(v2.e.f10660a);

    @Override // v2.e
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f6531b);
    }

    @Override // e3.e
    public final Bitmap c(y2.a aVar, Bitmap bitmap, int i6, int i10) {
        return z.b(aVar, bitmap, i6, i10);
    }

    @Override // v2.e
    public final boolean equals(Object obj) {
        return obj instanceof u;
    }

    @Override // v2.e
    public final int hashCode() {
        return 1572326941;
    }
}
