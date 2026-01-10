package androidx.media3.extractor.mp4;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.extractor.SniffFailure;
import java.util.Arrays;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class UnsupportedBrandsSniffFailure implements SniffFailure {
    public final g7.a compatibleBrands;
    public final int majorBrand;

    public UnsupportedBrandsSniffFailure(int i6, int[] iArr) {
        g7.a aVar;
        this.majorBrand = i6;
        if (iArr != null) {
            g7.a aVar2 = g7.a.f7103c;
            aVar = iArr.length == 0 ? g7.a.f7103c : new g7.a(Arrays.copyOf(iArr, iArr.length));
        } else {
            aVar = g7.a.f7103c;
        }
        this.compatibleBrands = aVar;
    }
}
