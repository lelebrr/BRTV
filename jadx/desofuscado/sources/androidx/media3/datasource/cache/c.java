package androidx.media3.datasource.cache;

import androidx.media3.extractor.metadata.mp4.SlowMotionData;
import java.util.Comparator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2112a;

    public /* synthetic */ c(int i6) {
        this.f2112a = i6;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f2112a) {
            case 0:
                return LeastRecentlyUsedCacheEvictor.compare((CacheSpan) obj, (CacheSpan) obj2);
            case 1:
                return SlowMotionData.Segment.lambda$static$0((SlowMotionData.Segment) obj, (SlowMotionData.Segment) obj2);
            default:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i6 = 0; i6 < bArr.length; i6++) {
                    byte b8 = bArr[i6];
                    byte b10 = bArr2[i6];
                    if (b8 != b10) {
                        return b8 - b10;
                    }
                }
                return 0;
        }
    }
}
