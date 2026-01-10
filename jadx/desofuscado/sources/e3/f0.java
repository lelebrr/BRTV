package e3;

import android.media.MediaMetadataRetriever;
import android.os.Build;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 implements v2.j {
    public static final v2.g d = new v2.g("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new j(2));

    /* renamed from: e, reason: collision with root package name */
    public static final v2.g f6499e = new v2.g("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new j(3));
    public static final u6.e f = new u6.e(10);

    /* renamed from: g, reason: collision with root package name */
    public static final List f6500g = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* renamed from: a, reason: collision with root package name */
    public final e0 f6501a;

    /* renamed from: b, reason: collision with root package name */
    public final y2.a f6502b;

    /* renamed from: c, reason: collision with root package name */
    public final u6.e f6503c = f;

    public f0(y2.a aVar, e0 e0Var) {
        this.f6502b = aVar;
        this.f6501a = e0Var;
    }

    @Override // v2.j
    public final x2.x a(Object obj, int i6, int i10, v2.h hVar) throws IOException {
        long jLongValue = ((Long) hVar.c(d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException(a.e.o(jLongValue, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "));
        }
        Integer num = (Integer) hVar.c(f6499e);
        if (num == null) {
            num = 2;
        }
        n nVar = (n) hVar.c(n.f6515g);
        if (nVar == null) {
            nVar = n.f;
        }
        n nVar2 = nVar;
        this.f6503c.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.f6501a.e(mediaMetadataRetriever, obj);
            return d.b(c(obj, mediaMetadataRetriever, jLongValue, num.intValue(), i6, i10, nVar2), this.f6502b);
        } finally {
            if (Build.VERSION.SDK_INT >= 29) {
                mediaMetadataRetriever.release();
            } else {
                mediaMetadataRetriever.release();
            }
        }
    }

    @Override // v2.j
    public final boolean b(Object obj, v2.h hVar) {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x012e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0130 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0190 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0191  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.Bitmap c(java.lang.Object r15, android.media.MediaMetadataRetriever r16, long r17, int r19, int r20, int r21, e3.n r22) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 410
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e3.f0.c(java.lang.Object, android.media.MediaMetadataRetriever, long, int, int, int, e3.n):android.graphics.Bitmap");
    }
}
